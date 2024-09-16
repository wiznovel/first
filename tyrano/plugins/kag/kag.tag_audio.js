tyrano.plugin.kag.tag.playbgm = {
    vital: ["storage"],
    pm: {
        loop: "true",
        storage: "",
        fadein: "false",
        time: 2e3,
        volume: "",
        buf: "0",
        target: "bgm",
        sprite_time: "",
        html5: "false",
        click: "false",
        stop: "false",
        panVal: ''
    },
    start: function (pm) {
        let context = this;

        if (!context.kag.tmp.audioContext) {
            context.kag.tmp.audioContext = Howler.ctx;
        }

        function playOrBindAudio() {
            if (context.kag.tmp.ready_audio === 0) {
                $(".tyrano_base").on("click.bgm", function() {
                    context.kag.readyAudio();
                    context.kag.tmp.ready_audio = true;
                    context.play(pm);
                    $(".tyrano_base").off("click.bgm");
                });
            } else {
                context.play(pm);
            }
        }

        function isAudioPlayable(target, statValue) {
            return (target !== "bgm" || statValue !== 0) &&
                (target !== "se" || statValue !== 0);
        }

        if ($.userenv() === "pc" || isAudioPlayable(pm.target, context.kag.stat.play_bgm) && isAudioPlayable(pm.target, context.kag.stat.play_se)) {
            context.kag.layer.hideEventLayer();
            if (context.kag.stat.is_skip === 1 && pm.target === "se" && pm.stop !== "false") {
                context.kag.layer.showEventLayer();
                context.kag.ftag.nextOrder();
            } else {
                playOrBindAudio();
            }
        } else {
            playOrBindAudio();
            context.kag.ftag.nextOrder();
        }
    },
    play: function (pm) {
        var that = this, target = "bgm";

        if ("se" == pm.target) {
            target = "sound";
            this.kag.tmp.is_se_play = !0;
            this.kag.stat.map_vo.vobuf[pm.buf] && (this.kag.tmp.is_vo_play = !0);
            this.kag.stat.current_se || (this.kag.stat.current_se = {});
            "false" == pm.stop && ("true" == pm.loop ? this.kag.stat.current_se[pm.buf] = pm : this.kag.stat.current_se[pm.buf] && delete this.kag.stat.current_se[pm.buf])
        } else {
            this.kag.tmp.is_audio_stopping = !1;
            this.kag.tmp.is_bgm_play = !0
        }
        var volume = 1;
        "" !== pm.volume && (volume = parseFloat(parseInt(pm.volume) / 100));
        var ratio = 1;
        if ("bgm" === target) {
            ratio = void 0 === this.kag.config.defaultBgmVolume ? 1 : parseFloat(parseInt(this.kag.config.defaultBgmVolume) / 100);
            void 0 !== this.kag.stat.map_bgm_volume[pm.buf] && (ratio = parseFloat(parseInt(this.kag.stat.map_bgm_volume[pm.buf]) / 100))
        } else {
            if (!this.kag.stat.customSeVolume) {
                this.kag.stat.customSeVolume = {};
            }

            this.kag.stat.customSeVolume[pm.buf] = pm.volume !== undefined && pm.volume !== "" ? parseFloat(pm.volume) / 100 : 1;
            ratio = void 0 === this.kag.config.defaultSeVolume ? 1 : parseFloat(parseInt(this.kag.config.defaultSeVolume) / 100);
            void 0 !== this.kag.stat.map_se_volume[pm.buf] && (ratio = parseFloat(parseInt(this.kag.stat.map_se_volume[pm.buf]) / 100))
        }
        volume *= ratio;
        var browser = $.getBrowser(), storage = pm.storage;
        "mp3" != this.kag.config.mediaFormatDefault && ("msie" != browser && "safari" != browser && "edge" != browser || (storage = $.replaceAll(storage, ".ogg", ".m4a")));
        var audio_obj = null, howl_opt = {
            src: $.isHTTP(pm.storage) ? storage : "" != storage ? "./data/" + target + "/" + storage : "",
            volume: volume,
            onend: e => {
            }
        };
        "true" == pm.html5 && (howl_opt.html5 = !0);
        if ("" != pm.sprite_time) {
            let array_sprite = pm.sprite_time.split("-"), sprite_from = parseInt($.trim(array_sprite[0])),
                duration = parseInt($.trim(array_sprite[1])) - sprite_from;
            howl_opt.sprite = {sprite_default: [sprite_from, duration, $.toBoolean(pm.loop)]}
        }
        audio_obj = new Howl(howl_opt);
        "true" == pm.loop ? audio_obj.loop(!0) : audio_obj.loop(!1);
        if ("bgm" === target) {
            this.kag.tmp.map_bgm[pm.buf] && this.kag.tmp.map_bgm[pm.buf].unload();
            this.kag.tmp.map_bgm[pm.buf] = audio_obj;
            that.kag.stat.current_bgm = storage;
            that.kag.stat.current_bgm_vol = pm.volume;
            that.kag.stat.current_bgm_html5 = pm.html5
        } else {
            if (this.kag.tmp.map_se[pm.buf]) {
                this.kag.tmp.map_se[pm.buf].pause();
                this.kag.tmp.map_se[pm.buf].unload();
                delete this.kag.tmp.map_se[pm.buf]
            }
            this.kag.tmp.map_se[pm.buf] = audio_obj
        }
        audio_obj.once("play", (function () {
            that.kag.layer.showEventLayer();
            "false" == pm.stop && that.kag.ftag.nextOrder()
        }));
        "" !== pm.sprite_time ? audio_obj.play("sprite_default") : audio_obj.play();
        "true" == pm.fadein && audio_obj.fade(0, volume, parseInt(pm.time));
        "true" != pm.loop && audio_obj.on("end", (function (e) {
            if ("se" == pm.target) {
                that.kag.tmp.is_se_play = !1;
                that.kag.tmp.is_vo_play = !1;
                if (1 == that.kag.tmp.is_se_play_wait) {
                    that.kag.tmp.is_se_play_wait = !1;
                    that.kag.ftag.nextOrder()
                } else if (1 == that.kag.tmp.is_vo_play_wait) {
                    that.kag.tmp.is_vo_play_wait = !1;
                    setTimeout((function () {
                        that.kag.ftag.nextOrder()
                    }), 500)
                }
            } else if ("bgm" == pm.target) {
                that.kag.tmp.is_bgm_play = !1;
                if (1 == that.kag.tmp.is_bgm_play_wait) {
                    that.kag.tmp.is_bgm_play_wait = !1;
                    that.kag.ftag.nextOrder()
                }
            }
        }))

        let panNode = that.kag.tmp.audioContext.createStereoPanner();
        panNode.pan.value = pm.panVal;
        let sourceNode = that.kag.tmp.map_bgm[pm.buf]._sounds[0]._node;
        sourceNode.disconnect();
        sourceNode.connect(panNode);
        panNode.connect(that.kag.tmp.audioContext.destination);
    }
};
tyrano.plugin.kag.tag.stopbgm = {
    pm: {fadeout: "false", time: 2e3, target: "bgm", buf: "0", buf_all: "false", stop: "false"}, start: function (pm) {
        var that = this, target_map = null;
        if ("bgm" == pm.target) {
            target_map = this.kag.tmp.map_bgm;
            that.kag.tmp.is_bgm_play = !1;
            that.kag.tmp.is_bgm_play_wait = !1
        } else {
            target_map = this.kag.tmp.map_se;
            that.kag.tmp.is_vo_play = !1;
            that.kag.tmp.is_se_play = !1;
            that.kag.tmp.is_se_play_wait = !1;
            this.kag.stat.current_se || (this.kag.stat.current_se = {});
            "false" == pm.stop && this.kag.stat.current_se[pm.buf] && delete this.kag.stat.current_se[pm.buf]
        }
        $.getBrowser();
        for (key in target_map) "true" !== pm.buf_all && key != pm.buf || function () {
            var _key = key, _audio_obj = null;
            if ("bgm" === pm.target) {
                _audio_obj = target_map[_key];
                if ("false" == pm.stop) {
                    that.kag.stat.current_bgm = "";
                    that.kag.stat.current_bgm_vol = ""
                }
            } else _audio_obj = target_map[_key];
            if ("true" == pm.fadeout) {
                _audio_obj.fade(_audio_obj.volume(), 0, parseInt(pm.time));
                _audio_obj.playing() && _audio_obj.once("fade", (() => {
                    0 === _audio_obj.volume() && _audio_obj.stop()
                }))
            } else _audio_obj.stop()
        }();
        "false" == pm.stop && this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.fadeinbgm = {
    vital: ["storage", "time"],
    pm: {loop: "true", storage: "", fadein: "true", sprite_time: "", html5: "false", time: 2e3},
    start: function (pm) {
        parseInt(pm.time) <= 100 && (pm.time = 100);
        this.kag.ftag.startTag("playbgm", pm)
    }
};
tyrano.plugin.kag.tag.fadeoutbgm = {
    pm: {loop: "true", storage: "", fadeout: "true", time: 2e3}, start: function (pm) {
        this.kag.ftag.startTag("stopbgm", pm)
    }
};
tyrano.plugin.kag.tag.xchgbgm = {
    vital: ["storage", "time"],
    pm: {loop: "true", storage: "", fadein: "true", fadeout: "true", time: 2e3},
    start: function (pm) {
        this.kag.ftag.startTag("stopbgm", pm);
        this.kag.ftag.startTag("playbgm", pm)
    }
};
tyrano.plugin.kag.tag.playse = {
    vital: ["storage"],
    pm: {
        storage: "",
        target: "se",
        volume: "",
        loop: "false",
        buf: "0",
        sprite_time: "",
        html5: "false",
        clear: "false"
    },
    start: function (pm) {
        this.kag.layer.hideEventLayer();
        "true" == pm.clear && this.kag.ftag.startTag("stopbgm", {target: "se", stop: "true", buf_all: "true"});
        this.kag.ftag.startTag("playbgm", pm)
    }
};
tyrano.plugin.kag.tag.stopse = {
    pm: {storage: "", fadeout: "false", time: 2e3, buf: "0", target: "se"},
    start: function (pm) {
        this.kag.ftag.startTag("stopbgm", pm)
    }
};
tyrano.plugin.kag.tag.fadeinse = {
    vital: ["storage", "time"],
    pm: {
        storage: "",
        target: "se",
        loop: "false",
        volume: "",
        fadein: "true",
        buf: "0",
        sprite_time: "",
        html5: "false",
        time: "2000"
    },
    start: function (pm) {
        parseInt(pm.time) <= 100 && (pm.time = 100);
        this.kag.ftag.startTag("playbgm", pm)
    }
};
tyrano.plugin.kag.tag.fadeoutse = {
    pm: {storage: "", target: "se", loop: "false", buf: "0", fadeout: "true"},
    start: function (pm) {
        this.kag.ftag.startTag("stopbgm", pm)
    }
};
tyrano.plugin.kag.tag.bgmopt = {
    pm: {
        volume: "",
        effect: "true",
        buf: "",
        tag_volume: "",
        next: "true",
        time: "",
        samebgm_restart: "",
    },

    start: function (pm) {
        let tag_volume;
        let config_volume;

        if (pm.buf) {
            if (pm.volume !== "") this.kag.stat.map_bgm_volume[pm.buf] = pm.volume;
            config_volume = this.kag.stat.map_bgm_volume[pm.buf];
        } else {
            if (pm.volume !== "") {
                this.kag.stat.map_bgm_volume = {};
                this.kag.config.defaultBgmVolume = pm.volume;
            }
            config_volume = this.kag.config.defaultBgmVolume;
        }

        config_volume = $.parseVolume(config_volume);
        if (pm.tag_volume !== "") {
            tag_volume = $.parseVolume(pm.tag_volume);
            pm.effect = "true";
            this.kag.stat.current_bgm_vol = pm.tag_volume;
        }

        const target_map = this.kag.tmp.map_bgm;
        if (pm.effect == "true" && this.kag.define.FLAG_APRI == false) {
            const options = {
                config: config_volume,
                tag: tag_volume,
                time: pm.time,
            };
            if (pm.buf) {
                const audio_obj = target_map[pm.buf];
                if (audio_obj) this.kag.changeHowlVolume(audio_obj, options);
            } else {
                for (const key in target_map) {
                    const audio_obj = target_map[key];
                    if (audio_obj) this.kag.changeHowlVolume(audio_obj, options);
                }
            }
        }

        if (pm.samebgm_restart) {
            this.kag.stat.bgmopt_samebgm_restart = pm.samebgm_restart === "true";
        }

        if (pm.volume !== undefined && pm.volume !== "") {
            this.kag.ftag.startTag("eval", {
                exp: "sf._system_config_bgm_volume = " + pm.volume,
                next: pm.next,
            });
        } else {
            if (pm.next !== "false") this.kag.ftag.nextOrder();
        }
    },
};
tyrano.plugin.kag.tag.seopt = {
    pm: {volume: "100", effect: "true", buf: ""}, start: function (pm) {
        var map_se = this.kag.tmp.map_se;
        if ("" != pm.buf) this.kag.stat.map_se_volume[pm.buf] = pm.volume; else {
            this.kag.stat.map_se_volume = {};
            this.kag.config.defaultSeVolume = pm.volume
        }
        if ("true" == pm.effect && 0 == this.kag.define.FLAG_APRI) {
            var new_volume = parseFloat(parseInt(pm.volume) / 100);
            if ("" == pm.buf) for (key in map_se) map_se[key] && map_se[key].volume(new_volume); else map_se[pm.buf] && map_se[pm.buf].volume(new_volume)
        }
        this.kag.ftag.startTag("eval", {exp: "sf._system_config_se_volume = " + pm.volume})
    }
};
tyrano.plugin.kag.tag.wbgm = {
    pm: {}, start: function () {
        1 == this.kag.tmp.is_bgm_play ? this.kag.tmp.is_bgm_play_wait = !0 : this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.wse = {
    pm: {}, start: function () {
        1 == this.kag.tmp.is_se_play ? this.kag.tmp.is_se_play_wait = !0 : this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.voconfig = {
    pm: {sebuf: "0", name: "", vostorage: "", number: ""}, start: function (pm) {
        this.kag.stat.map_vo;
        this.kag.stat.map_vo.vobuf[pm.sebuf] = 1;
        if ("" != pm.name) {
            var vochara = {};
            vochara = this.kag.stat.map_vo.vochara[pm.name] ? this.kag.stat.map_vo.vochara[pm.name] : {
                vostorage: "",
                buf: pm.sebuf,
                number: 0
            };
            "" != pm.vostorage && (vochara.vostorage = pm.vostorage);
            "" != pm.number && (vochara.number = pm.number);
            this.kag.stat.map_vo.vochara[pm.name] = vochara
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.vostart = {
    pm: {}, start: function () {
        this.kag.stat.vostart = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.vostop = {
    pm: {}, start: function () {
        this.kag.stat.vostart = !1;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.speak_on = {
    vital: [], pm: {volume: ""}, start: function (pm) {
        "speechSynthesis" in window ? this.kag.stat.play_speak = !0 : console.error("*ошибка: Эта среда не поддерживает функцию считывания [speak_on]");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.speak_off = {
    vital: [], pm: {volume: ""}, start: function (pm) {
        this.kag.stat.play_speak = !1;
        this.kag.ftag.nextOrder()
    }
};
