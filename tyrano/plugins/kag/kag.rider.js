tyrano.plugin.kag.rider = {
    app: {}, tyrano: null, rider_view: {}, init: function () {
    }, complete: function (TG) {
        if (window.opener && window.opener.app && 1 == window.opener.app.config.user_config.check_debug) {
            TYRANO.kag.is_rider = !0;
            this.app = window.opener.app;
            this.app.completeRider(TG)
        }
    }, cutTyranoTag: function (tag, pm) {
        TYRANO.kag.ftag.startTag(tag, pm)
    }, cutTyranoScript: function (str) {
        for (var array_s = TYRANO.kag.parser.parseScenario(str).array_s, i = 0; i < array_s.length; i++) {
            var tag = array_s[i];
            this.app.rider_view.pushConsoleGrid("tag", tag);
            this.cutTyranoTag(tag.name, tag.pm)
        }
    }, insertElement: function (category, file) {
        var path = "./data/" + category + "/" + file;
        if ("fgimage" == category || "image" == category) {
            var j_img = $("<div style='position:absolute;z-index:9999999;'><div class='area_pos' style='position:absolute;width:100px;opacity:0.5;background-color:black;color:white'></div><div class='button_delete' style='position:absolute;right:0px;border:solid 1px gray;background-color:white;width:20px;height:20px;cursor:pointer' >×</div><img style='border:solid 1px green;' src='" + path + "' /></div>");
            !function () {
                var _j_img = j_img;
                j_img.draggable({
                    scroll: !1, stop: function (e, ui) {
                        _j_img.find(".area_pos").html("x:" + ui.position.left + " y:" + ui.position.top)
                    }
                });
                _j_img.find(".button_delete").click((function () {
                    _j_img.remove()
                }));
                $(".tyrano_base").attr("ondragstart", "");
                $(".tyrano_base").append(_j_img)
            }()
        } else if ("bgimage" == category) {
            TYRANO.kag.layer.getLayer("base", "fore").css("background-image", "url(" + path + ")")
        }
    }, getScenario: function (scenario_name, call_back) {
        var file_url = "./data/scenario/" + scenario_name;
        $.loadText(file_url, (function (text_str) {
            var result_obj = TYRANO.kag.parser.parseScenario(text_str);
            call_back && call_back(result_obj)
        }))
    }, getCharaInfo: function () {
        return TYRANO.kag.stat.charas
    }, getVariables: function () {
        var map_variable = TYRANO.kag.variable, f = TYRANO.kag.stat.f, mp = TYRANO.kag.stat.mp;
        map_variable.f = f;
        map_variable.mp = mp;
        return map_variable
    }, evalScript: function (str) {
        TYRANO.kag.evalScript(str)
    }, pushVariableGrid: function () {
        this.app.rider_view.updateVariable()
    }, initSave: function () {
        localStorage.clear()
    }, pushConsoleLog: function (tag) {
        this.app.rider_view.pushConsoleGrid("tag", tag)
    }
};
