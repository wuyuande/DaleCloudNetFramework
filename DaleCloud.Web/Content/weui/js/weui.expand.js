
/*========================================================
*****   weui-uploader 实现图片上传+预览+删除方法  ********
* Editor:吴远德_Dale ,最初引用于：http://jqweui.com/components
*引用JS：jquery-2.1.4.js，weui.min.js，jquery-weui.js；
*引用CSS：weui.min.css；jquery-weui.css；
*用到了：weui-uploader及 实现了上传，weui-gallery实现了预览及删除
========================================================*/
$(function () {
    //var tmpl = '<li id="" class="weui-uploader__file" style="background-image:url(#url#)"></li>',//weui.js中的方法
    //var tmpl = '<li id="" class="weui-uploader__file" style="background-image:url(#url#)"><input type="hidden" id="#imgid#" name="#imgid#" value="#url#" /></li>',
    var tmpl = '<li id="" class="weui-uploader__file" style="background-image:url(#url#)"><input type="hidden" id="#imgid#" name="#imgid#" value="#url#" /><div class="weui-uploader__file-content">50%</div></li>',
        $gallery = $(".weui-gallery"), $galleryImg = $(".weui-gallery__img"),
        $gallery__del = $(".weui-gallery__del"),
        $uploaderInput = $("#uploader_input"),
        $uploaderFiles = $("#uploader_files"),
        $uploaderCount = $("#uploader_count")//显示已上传数的div元素
    ;
    // 允许上传的图片类型
    var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
    // 1024KB，也就是 1MB
    var maxSize = 1024 * 1024;
    // 图片最大宽度
    var maxWidth = 600;
    // 最大上传图片数量
    var imgTotal = 0;
    // 记录当前已上传数量
    var imgCount = 0;
    //记录当前被gallery的click事件打开的li元素
    var $galleryClickLi;
    $uploaderInput.on("change", function (e) {
        var src, url = window.URL || window.webkitURL || window.mozURL, files = e.target.files;
        imgTotal = parseInt($uploaderCount.attr("data-total"));//从显示上传数的$uploaderCount获取最大上传数量
        imgCount = parseInt($uploaderCount.attr("data-val"));//从显示上传数的$uploaderCount获取当前的数量
        for (var i = 0, len = files.length; i < len; ++i) {
            var file = files[i];

            if (url) {
                src = url.createObjectURL(file);
            } else {
                src = e.target.result;
            }
            imgCount = imgCount + 1;//数量+1；
            //$uploaderFiles.append($(tmpl.replace('#url#', src)));
            //新方法中对隐藏域的ID和value进行替换
           
            var reader = new FileReader();
            reader.onload = function (e) {
                var img = new Image();
                img.onload = function () {
                    // 不要超出最大宽度
                    var w = Math.min(maxWidth, img.width);
                    // 高度按比例计算
                    var h = img.height * (w / img.width);
                    var canvas = document.createElement('canvas');
                    var ctx = canvas.getContext('2d');
                    // 设置 canvas 的宽度和高度
                    canvas.width = w;
                    canvas.height = h;
                    ctx.drawImage(img, 0, 0, w, h);
                    var base64 = canvas.toDataURL('image/png');

                    // 插入到预览区
                    $uploaderFiles.append($(tmpl.replace('#url#', base64).replace('#imgid#', "img" + imgCount).replace('#imgid#', "img" + imgCount).replace('#url#', base64)));

                    // 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传
                    var progress = 0;
                    function uploading() {
                        $uploaderFiles.find('.weui-uploader__file-content').text(++progress + '%');
                        if (progress < 100) {
                            setTimeout(uploading, 30);
                        } else {
                            // 如果是失败，塞一个失败图标
                            //$preview.find('.weui-uploader__file-content').html('<i class="weui_icon_warn"></i>');
                            $uploaderFiles.removeClass('weui-uploader__file_status')
                                    .find('.weui-uploader__file-content')
                                    .remove();
                        }
                    }
                    setTimeout(uploading, 30);
                };
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);

        }
        //更新记录数量的$uploaderCount 中的值和显示内容
        updateImgCount();
    });
    $uploaderFiles.on("click", "li", function () {
        $galleryImg.attr("style", this.getAttribute("style"));
        $gallery.fadeIn(100);
        $galleryClickLi = this;//记录被单击调用$gallery显示的li元素
    });
    $gallery.on("click", function () {
        $gallery.fadeOut(100);
    });
    $gallery__del.on("click", function () {
        $gallery.fadeOut(100);
        $galleryClickLi.remove();// $gallery删除事件执行移除li元素
        imgCount = imgCount - 1;
        updateImgCount();
    });

    //更新记录数量的$uploaderCount中的值和显示内容
    function updateImgCount() {
        $uploaderCount.attr("data-val", imgCount);
        $uploaderCount.html("" + imgCount + "/" + imgTotal + "");
        if (imgCount >= imgTotal) {
            $('.weui-uploader__input-box').hide();
        } else {
            $('.weui-uploader__input-box').show();
        }
    }
});

$.fn.formLoad = function (formdate) {
    var element = $(this);
    if (!!formdate) {
        for (var key in formdate) {
            var $id = element.find('#' + key);
            var value = $.trim(formdate[key]).replace(/&nbsp;/g, '');
            var type = $id.attr('type');
            switch (type) {
                case "checkbox":
                    if (value == "true") {
                        $id.attr("checked", 'checked');
                    } else {
                        $id.removeAttr("checked");
                    }
                    break;
                case "select":
                    $id.val(value).trigger("change");
                    break;
                default:
                    $id.val(value);
                    break;
            }
        };
        return false;
    }
    
};

/*======================================================
************   combobox   ************
======================================================*/
+function ($) {
    $.fn.combobox = function (url, valueField, textField) {
        if (typeof url === "object") {
            options = url;
            url = undefined;
            return;
        }
        if (typeof valueField == "object") {
            valueField = "value";
        }
        if (typeof textField == "object") {
            textField = "title";
        }
        var self = this;
        $.ajax({
            url: url,
            type: "POST",
            dataType: "json",
            cache: false,
            error: function () {
            },
            success: function (data) {
                if (data && data.length != 0) {
                    for (var i = 0; i < data.length; i++) {
                        var option = '<option value="' + data[i][valueField] + '">' + data[i][textField] + '</option>';
                        $(self).append(option);
                    }
                }
            }
        });
    }

}($);

/*======================================================
************   select expand   ************
======================================================*/
+function ($) {
    $.fn.selectexpands = function (params) {
        params = $.extend({}, defaults, params);
        if (typeof params.url === "object") {
            params.url = undefined;
            return;
        }
        var self = this;
        $.ajax({
            url: params.url,
            type: "POST",
            dataType: "json",
            cache: false,
            error: function () {
            },
            success: function (data) {
                if (data && data.length != 0) {
                    self.select({
                        title: params.title,
                        items: data
                    });
                } else {
                    self.select({
                        title: params.title,
                        items: params.defValues
                    });
                }
            }
        });
    }
    //初始参数
    defaults = $.fn.selectexpands.prototype.defaults = {
        title: "title",
    };
}($);


/*======================================================
************   media-box   ************
======================================================*/
+function ($) {
    var defaults;
    $.fn.weuimediabox = function (params) {
        params = $.extend({}, defaults, params);
        if (typeof params.url === "object") {
            params.url = undefined;
            return;
        }
        if (typeof params.titleField === "object") {
            params.titleField = "id";
        }
        if (typeof params.descField === "object") {
            params.descField = "name";
        }
        if (typeof params.imgField === "object") {
            params.imgField = "img";
        }
        
        var self = this;
        $.ajax({
            url: params.url,
            type: "POST",
            dataType: "json",
            cache: false,
            error: function () {
            },
            success: function (data) {
                if (data && data.length != 0) {
                    for (var i = 0; i < data.length; i++) {
                        var link = params.linkurl + "?" + params.paramField + "=" + data[i][params.paramField];
                        var option = '';
                        option += '<a href="' + link + '" class="weui-media-box weui-media-box_appmsg">';
                        option += ' <div class="weui-media-box__hd">';
                        if (typeof data[i][params.imgField] === "undefined") {
                            option += '     <img class="weui-media-box__thumb" src="' + params.defaultImg + '">';
                        }else{
                            option += '     <img class="weui-media-box__thumb" src="' + data[i][params.imgField] + '">';
                        }
                        option += ' </div>';
                        option += ' <div class="weui-media-box__bd">';
                        option += '     <h4 class="weui-media-box__title">' + data[i][params.titleField] + '</h4>';
                        option += '     <p class="weui-media-box__desc">' + data[i][params.descField] + '</p>';
                        option += ' </div>';
                        option += '</a>';
                        $(self).append(option);
                    }
                }
            }
        });
    }

    defaults = $.fn.weuimediabox.prototype.defaults = {
        url:"",
        titleField:"title", 
        descField:"desc",
        defaultImg: "../weiui/images/icon_nav_button.png",
        linkurl: "", //连接地址
        paramField:"id"
    };
}($);

/*======================================================
************  orderlistbox   ************
======================================================*/
+function ($) {
    var defaults;
    $.fn.weuiOrderlistBox = function (params) {
        params = $.extend({}, defaults, params);
        var descHtml, infometaHtml;
        if (typeof params.url === "object") {
            params.url = undefined;
            return;
        }
        if (typeof params.titleField === "object") {
            params.titleField = "id";
        }

        var self = this;
        $.ajax({
            url: params.url,
            data:params.data,
            type: "POST",
            dataType: "json",
            cache: false,
            error: function () {
            },
            success: function (data) {
                if (data && data.length != 0) {
                    for (var i = 0; i < data.length; i++) {
                        var link = params.linkurl + "?" + params.paramField + "=" + data[i][params.paramField];
                        if (typeof params.descField === "object") {
                            descHtml = '     <p class="weui-media-box__desc">&nbsp;</p>';
                        } else {
                            descHtml = '     <p class="weui-media-box__desc">' + data[i][params.descField] + '</p>';
                        }
                        if (typeof params.infoOther === "undefined") {
                            infometaHtml = ' <li class="weui-media-box__info__meta ">&nbsp;</li>';
                        } else {
                            infometaHtml = ' <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">' + data[i][params.infoOther] + '</li>';
                        }
                        var option = '';
                        option += '<div class="weui-media-box  weui-media-box_text">';
                        option += '<a href="' + link + '" >';
                        option += ' <h4 class="weui-media-box__title">' + data[i][params.titleField] + '</h4>';
                        option +=   descHtml;
                        option += ' <ul class="weui-media-box__info">';
                        option += ' <li class="weui-media-box__info__meta">' + data[i][params.infoState] + '</li>';
                        option +=   infometaHtml;
                        option += ' <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">' + data[i][params.infoDate] + '</li>';
                        option += ' </ul>';
                        option += '</a>';
                        option += ' </div>';
                        $(self).append(option);
                    }
                }
            }
        });
    }

    defaults = $.fn.weuiOrderlistBox.prototype.defaults = {
        url: '',
        titleField: 'title',
        descField: 'desc',
        linkurl: '', //连接地址
        paramField: 'id'
    };
}($);

function getAjaxJson(url, params) {
    var ret;
    $.ajax({
        url: url,
        data: params,
        type: "POST",
        dataType: "json",
        cache: false,
        error: function () {
        },
        success: function (data) {
            ret= data;
        }
    });
    return ret;
}

/*======================================================
************   其他自定义方法   ************
======================================================*/
//获取URL地址参数
function $.getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return decodeURI(r[2]); return null;
}

//为地址增加参数
function AddPara(url, key, value) {
    //当前地址不包括冒号，说明还没有任何参数
    if (url.indexOf("?") < 0) {
        url = url + "?" + key + "=" + value;
    } else {
        //如果有冒号说明已经有参数
        url = url + "&" + key + "=" + value;
    }
    return url;
}