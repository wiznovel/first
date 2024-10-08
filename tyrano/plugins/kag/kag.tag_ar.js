tyrano.plugin.kag.tag.bgcamera = {
    vital: [],
    pm: {
        name: "",
        wait: "true",
        time: 1e3,
        fit: "true",
        width: "",
        height: "",
        left: "",
        top: "",
        qrcode: "off",
        debug: "false",
        mode: "",
        stop: "false",
        audio: "false"
    },
    start: function (pm) {
        this.kag.ftag.hideNextImg();
        var that = this;
        this.kag.stat.qr.mode = pm.qrcode;
        0 == pm.time && (pm.wait = "false");
        var _video, _pm, video = document.createElement("video");
        video.id = "bgcamera";
        video.style.backgroundColor = "black";
        video.style.position = "absolute";
        video.style.top = "0px";
        video.style.left = "0px";
        video.style.width = "100%";
        video.style.display = "none";
        video.autoplay = !0;
        video.autobuffer = !0;
        "" != pm.width && (video.style.width = pm.width + "px");
        if ("" != pm.height) video.style.height = pm.height + "px"; else if ("true" == pm.fit) {
            if (parseInt(this.kag.config.scWidth) > parseInt(this.kag.config.scHeight)) {
                video.style.height = "";
                video.style.width = "100%"
            } else {
                video.style.height = "100%";
                video.style.width = ""
            }
        } else video.style.height = "";
        "" != pm.left && (video.style.left = pm.left + "px");
        "" != pm.top && (video.style.top = pm.top + "px");
        video.setAttribute("playsinline", "1");
        "true" == pm.mute && (video.muted = !0);
        _video = video, _pm = pm, video.addEventListener("canplay", (function () {
            j_video.fadeIn(parseInt(pm.time), (function () {
                that.kag.tmp.camera_stream = !0;
                "true" == pm.wait && "false" == pm.stop && that.kag.ftag.nextOrder();
                that.checkPicture(_video, _pm)
            }))
        }));
        var opt = {video: !0, audio: !1};
        "true" == pm.audio && (opt.audio = !0);
        "back" == pm.mode ? opt.video = {facingMode: "environment"} : "front" == pm.mode && (opt.video = {facingMode: "user"});
        let j_video = $(video);
        $.setName(j_video, pm.name);
        j_video.css("z-index", 1);
        j_video.addClass("bgcamera");
        this.kag.stat.current_bgcamera = pm;
        $("#tyrano_base").append(j_video);
        navigator.mediaDevices.getUserMedia(opt).then((stream => {
            video.srcObject = stream;
            video.onloadedmetadata = e => {
            }
        }));
        "false" == pm.wait && "false" == pm.stop && that.kag.ftag.nextOrder()
    },
    checkPicture: function (video, pm) {
        if (0 == this.kag.tmp.camera_stream) return;
        if ("off" == this.kag.stat.qr.mode || 1 != this.kag.stat.is_strong_stop) {
            setTimeout((() => {
                this.checkPicture(video, pm)
            }), 1e3);
            return
        }
        var scWidth = parseInt(this.kag.config.scWidth) / 4, scHeight = parseInt(this.kag.config.scHeight) / 4,
            canvas = document.createElement("canvas");
        canvas.width = scWidth;
        canvas.height = scHeight;
        var ctx = canvas.getContext("2d");
        ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
        const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height),
            code = jsQR(imageData.data, canvas.width, canvas.height);
        var mode = this.kag.stat.qr.mode;
        if (code) {
            var url = code.data;
            "true" == pm.debug && alert(url);
            if (-1 != url.indexOf("http")) {
                if ("all" == mode || "define" == mode || "web" == mode) if (this.kag.stat.qr.define[url]) {
                    var jump_pm = this.kag.stat.qr.define[url];
                    if (1 == this.kag.stat.is_strong_stop) {
                        this.kag.layer.showEventLayer();
                        this.kag.ftag.startTag("jump", jump_pm)
                    }
                } else "define" != mode && (location.href = url)
            } else if (-1 != url.indexOf("tyrano:")) {
                if ("all" == mode || "jump" == mode) {
                    var tmp = $.replaceAll(url, "tyrano://", ""), tmp2 = $.getUrlQuery(tmp);
                    jump_pm = {};
                    tmp2.storage && (jump_pm.storage = tmp2.storage);
                    tmp2.target && (jump_pm.target = tmp2.target);
                    this.kag.stat.qr.mode = "off";
                    if (1 == this.kag.stat.is_strong_stop) {
                        this.kag.layer.showEventLayer();
                        this.kag.ftag.startTag("jump", jump_pm)
                    }
                }
            } else if (-1 != url.indexOf("[jump") && ("all" == mode || "jump" == mode)) {
                jump_pm = this.kag.parser.makeTag(url).pm;
                this.kag.stat.qr.mode = "off";
                if (1 == this.kag.stat.is_strong_stop) {
                    this.kag.layer.showEventLayer();
                    this.kag.ftag.startTag("jump", jump_pm)
                }
            }
            setTimeout((() => {
                this.checkPicture(video, pm)
            }), 300)
        } else setTimeout((() => {
            this.checkPicture(video, pm)
        }), 300)
    }
};
tyrano.plugin.kag.tag.qr_config = {
    vital: [], pm: {qrcode: ""}, start: function (pm) {
        "" != pm.qrcode && (this.kag.stat.qr.mode = pm.qrcode);
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stop_bgcamera = {
    vital: [], pm: {time: "1000", wait: "true"}, start: function (pm) {
        var that = this;
        that.kag.tmp.camera_stream = !1;
        $(".tyrano_base").find("#bgcamera").stop(!0, !0).fadeOut(parseInt(pm.time), (function () {
            $(this)[0].srcObject.getVideoTracks().forEach((track => {
                track.stop()
            }));
            $(this)[0].srcObject.getAudioTracks().forEach((track => {
                track.stop()
            }));
            $(this).remove();
            "true" == pm.wait && that.kag.ftag.nextOrder()
        }));
        if ($(".tyrano_base").find("#bgcamera").get(0)) {
            "false" == pm.wait && that.kag.ftag.nextOrder();
            this.kag.stat.current_bgcamera = ""
        } else that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.qr_define = {
    vital: ["url"],
    pm: {url: "", storage: "", target: "", clear: "false"},
    start: function (pm) {
        "true" == pm.clear ? delete this.kag.stat.qr.define[pm.url] : this.kag.stat.qr.define[pm.url] = pm;
        this.kag.ftag.nextOrder()
    }
};
