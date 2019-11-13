
/*========================================================
*****   weui-uploader 实现图片上传+预览+删除方法  ********
* Editor:吴远德_Dale ,最初引用于：http://jqweui.com/components
* Version: 1.0.2 ，EditDate:2019/09/04
*引用JS：jquery-2.1.4.js，weui.min.js，jquery-weui.js；
*引用CSS：weui.min.css；jquery-weui.css；
*用到了：weui-uploader及 实现了上传，weui-gallery实现了预览及删除
========================================================*/

+function ($) {
    $.fn.uploader = function (params) {
        params = $.extend({}, uploader_defaults, params);
        if (typeof params.url === "object") {
            params.url = undefined;
            return;
        }

        var self = this;
        //var tmpl = '<li id="" class="weui-uploader__file" style="background-image:url(#url#)"></li>',//weui.js中的方法
        var tmpl = '<li id="#imgid#" class="weui-uploader__file" style="background-image:url(#url#)"><input type="hidden" name="#imgid#" value="#url#" /><span class="weui-uploader__file-imagename">#imgname#</span><div class="weui-uploader__file-content">0%</div></li>',
            $gallery = $("#gallery"), $galleryImg = $gallery.find(".weui-gallery__img"),
            $uploaderInput = self.find(".weui-uploader__input"),
            $uploaderFiles = self.find(".weui-uploader__files"),
            $uploaderInfo = self.find(".weui-uploader__info")//显示已上传数的div元素
        ;
        
        if (typeof (params.gallery) == Object) {
            $gallery = params.gallery;
        }
        if (params.maxCount > 0) {
            $uploaderInfo.html("" + params.initCount + "/" + params.maxCount + "");
        }
        // 允许上传的图片类型
        var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
        // 1024KB，也就是 1MB
        var maxSize = params.maxSize;//默认：1024 * 1024;
        // 图片最大宽度
        var maxWidth = params.maxWidth;// 默认300px
        // 最大上传图片数量
        var imgTotal = params.maxCount;
        // 记录当前已上传数量
        var imgCount = params.initCount;
        //记录当前被gallery的click事件打开的li元素
        var $galleryClickLi;
        $uploaderInput.on("change", function (e) {
            var src, url = window.URL || window.webkitURL || window.mozURL, files = e.target.files;
            //imgTotal = parseInt($uploaderInfo.attr("data-total"));//从显示上传数的$uploaderInfo获取最大上传数量
            //imgCount = parseInt($uploaderInfo.attr("data-val"));//从显示上传数的$uploaderInfo获取当前的数量
            /*
            * 以下方法循环读取已选中图片的信息并完成图片预览加载和上传功能。
            */
            for (var i = 0, len = files.length; i < len; ++i) {
                var file = files[i];
                var filename = file.name;
                if (url) {
                    src = url.createObjectURL(file);
                } else {
                    src = e.target.result;
                }
                imgCount = imgCount + 1;//数量+1；

                // 处理图片信息并上传
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
                        var title = filename;
                        if (params.isShowName == false) {
                            title = "";
                        }
                        // 对对隐藏域的ID和value进行替换并插入到预览区
                        $uploaderFiles.append($(tmpl.replace('#url#', base64).replace('#imgid#', "img" + imgCount).replace('#imgid#', "img" + imgCount).replace('#url#', base64).replace('#imgname#', title)));

                        // 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传
                        var progress = 0;
                        // 实际上传方法
                        function uploading() {
                            if (params.url) {
                                var postdata = params.data;
                                postdata.Name = filename;
                                postdata.Src = base64;
                                postdata.FileType = '.jpg';
                                $.ajax({
                                    url: params.url,
                                    data: postdata,
                                    type: "POST",
                                    dataType: "json",
                                    cache: false,
                                    beforeSend: function (request) {
                                        var appkey = window.localStorage.getItem('appKey');
                                        request.setRequestHeader("Authorization", appkey);
                                        $uploaderFiles.find('.weui-uploader__file-content').text(++progress + '%');
                                    },
                                    success: function (res) {
                                        if (res.success == true) {
                                            progress = 100;
                                            $uploaderFiles.find('.weui-uploader__file-content').text(++progress + '%');
                                            $("#img" + imgCount).attr("id",res.result)

                                        } else {
                                            $uploaderFiles.removeClass('weui-uploader__file_status')
                                           .find('.weui-uploader__file-content')
                                           .remove();
                                        }
                                    },
                                    error: function () {
                                    },
                                });
                            }
                            if (typeof (params.success) == "function" && !params.url) {
                                // 调用外部方法
                                var resdata = {
                                    src: base64,
                                    name: filename
                                }
                                params.success(resdata);
                            }
                        }
                        setTimeout(uploading, 30);
                    };
                    img.src = e.target.result;
                };
                reader.readAsDataURL(file);

            }
            //更新记录数量的$uploaderInfo 中的值和显示内容
            updateUploadCount();
        });
        // 点击图片预览事件
        $uploaderFiles.on("click", "li", function () {
            $galleryImg.attr("style", this.getAttribute("style"));
            $gallery.fadeIn(100);
            $galleryClickLi = this;//记录被单击调用$gallery显示的li元素
        });
        // 点击图片关闭gallery事件
        $gallery.find(".weui-gallery__img").on("click", function () {
            $gallery.hide();
        });
        // 点击删除按钮事件
        $gallery.find(".weui-gallery__del").on("click", function () {
            if (params.model == "normal") {
                $gallery.fadeOut(100);
                $galleryClickLi.remove();// $gallery删除事件执行移除li元素
                imgCount = imgCount - 1;
                updateUploadCount();
                if (typeof (params.deletefunc) == "function") {
                    var fileid = $galleryClickLi.id;
                    params.deletefunc(fileid);
                }
            }
        });

        //更新记录数量的$uploaderInfo中的值和显示内容
        function updateUploadCount() {
            $uploaderInfo.attr("data-val", imgCount);
            $uploaderInfo.html("" + imgCount + "/" + imgTotal + "");
            if (imgCount >= imgTotal) {
                $('.weui-uploader__input-box').hide();
            } else {
                $('.weui-uploader__input-box').show();
            }
        }
        // 图片数据赋值
        $.fn.uploader.setValues = function (values) {
            for (var i = 0; i < values.length; i++) {
                var title = values[i].name;
                if (params.isShowName == false) {
                    title = "";
                }
                var option = '<li id=' + values[i].code + ' class="weui-uploader__file" style="background-image:url(' + values[i].src + ')"><span class="weui-uploader__file-imagename">' + title + '</span></li>';
                $uploaderFiles.append(option);
            }
            imgCount = values.length;
            updateUploadCount();
        }
    }

    //初始参数
    var uploader_defaults = $.fn.uploader.prototype.defaults = {
        model: "normal", // normal模式支持上传和删除，show模式仅支持预览
        url: "",
        success: null,
        deletefunc: null,
        data: {},
        maxCount: 3,// 最大上传数量
        initCount: 0,//初始上传数量
        maxSize: 1024 * 1024,// 图片最大宽度,1024KB，也就是 1MB
        maxWidth: 300,//预览区最大宽度,默认300
        gallery: $("#gallery"),
        isShowName:false
    };

}($);
