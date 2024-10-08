var _vchat_log_count = 0;
tyrano.plugin.kag.tag.vchat_in = {
    vital: [], pm: {}, start: function (pm) {
        this.kag.layer.hideEventLayer();
        var layer = this.kag.stat.current_layer, page = this.kag.stat.current_page,
            j_layer = this.kag.layer.getLayer(layer, page);
        j_layer.css("display", "none");
        j_layer.css("left", -1e5);
        (j_area_chat = $("#vchat_base")).find(".current_vchat").addClass("talked_vchat").removeClass("current_vchat");
        var j_vchat = $('        <div style="right: 0px; margin-right: 5px;" class="vchat current_vchat ">            <div class="v_chat_text vchat-text" style="margin-top: 0px; margin-right: 5px; margin-left: 20px; background-color: rgb(255, 255, 255);">                <h3 class="ribbon20 vchat_chara_name"></h3>                <p class="vchat-text-inner" ></p>            </div>        </div>        ');
        j_vchat.hide();
        var j_area_chat;
        j_vchat.find(".vchat-text-inner").css({
            color: "black",
            "font-weight": "normal",
            "font-size": "16px",
            margin: "0.2em",
            "line-height": "1.2em"
        });
        j_vchat.find(".vchat_chara_name").css({});
        (j_area_chat = $("#vchat_base")).prepend(j_vchat);
        j_area_chat.scrollTop(0);
        ++_vchat_log_count > this.kag.stat.vchat.max_log_count && $("#vchat_base").find(".vchat:eq(-1)").remove();
        this.kag.layer.showEventLayer();
        return !1
    }
};
tyrano.plugin.kag.tag.vchat_config = {
    vital: [], pm: {chara_name_color: ""}, start: function (pm) {
        "" != pm.chara_name_color && (this.kag.stat.vchat.chara_name_color = pm.chara_name_color);
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.vchat_chara = {
    vital: ["name"], pm: {name: "", color: ""}, start: function (pm) {
        if (this.kag.stat.vchat.is_active) {
            var charas = this.kag.stat.vchat.charas;
            charas[pm.name] || (charas[pm.name] = {color: ""});
            "" != pm.color && (charas[pm.name].color = pm.color);
            this.kag.ftag.nextOrder()
        } else this.kag.ftag.nextOrder()
    }
};
