/*html模板生成器*/
var iTemplate = (function () {
    var template = function () {
    };
    template.prototype = {
        makeList: function (tpl, json, fn) {
            var res = [], $10 = [], reg = /{(.+?)}/g, json2 = {}, index = 0;
            for (var el in json) {
                if (typeof fn === "function") {
                    json2 = fn.call(this, el, json[el], index++) || {};
                }
                res.push(
                    tpl.replace(reg, function ($1, $2) {
                        return ($2 in json2) ? json2[$2] : (undefined === json[el][$2] ? json[el] : json[el][$2]);
                    })
                );
            }
            return res.join('');
        }
    }
    return new template();
})();


/*
{
  url:'',//post地址
  isloading:是否显示loading 1显示 0不显示
  funname:调用方法名称
  funobj:调用方法参数
}
*/
function ajaxPost(data, oObject) {
    oObject.isloading = oObject.isloading == undefined ? 1 : oObject.isloading;
    oObject.funname = oObject.funname == undefined ? '' : oObject.funname;
    if (oObject.isloading) {
        var bclass = $('body').attr('class');
        if (bclass != 'loading') {
            $('body').attr('class', 'loading');
        }
    }
    $.ajax({
        dataType: 'json',
        data: data,
        cache: false,
        type: 'post',
        url: oObject.url,
        success: function (res, textStatus, jqXHR) {
            console.log(res);
            if (oObject.isloading) {
                if (bclass != 'loading') {
                    $('body').attr('class', '');
                }
            }
            if (oObject.funname != '') {
                oObject.funobj.result = res.result;
                oObject.funobj.state = res.state;
                oObject.funobj.message = res.message;
                oObject.funobj.res = res;
                oObject.funobj.jqXHR = jqXHR.getResponseHeader("sid");   //获取sid
                oObject.funname(oObject.funobj);
            }
        },
        error: function (res) {
            console.log(res);
        }
    });
}

/*
{
  url:'',//post地址
  isloading:是否显示loading 1显示 0不显示
  funname:调用方法名称
  funobj:调用方法参数
}
*/
function ajaxGet(data, oObject) {
    oObject.isloading = oObject.isloading == undefined ? 1 : oObject.isloading;
    oObject.funname = oObject.funname == undefined ? '' : oObject.funname;
    if (oObject.isloading) {
        var bclass = $('body').attr('class');
        if (bclass != 'loading') {
            $('body').attr('class', 'loading');
        }
    }
    $.ajax({
        dataType: 'json',
        data: data,
        cache: false,
        type: 'get',
        url: oObject.url,
        success: function (res, textStatus, jqXHR) {
            console.log(res);
            if (oObject.isloading) {
                if (bclass != 'loading') {
                    $('body').attr('class', '');
                }
            }
            if (oObject.funname != '') {
                oObject.funobj.result = res.result;
                oObject.funobj.state = res.state;
                oObject.funobj.message = res.message;
                oObject.funobj.res = res;
                oObject.funobj.jqXHR = jqXHR.getResponseHeader("sid");   //获取sid
                oObject.funname(oObject.funobj);
            }
        },
        error: function (res) {
            console.log(res);
        }
    });
}

/**
* json数据映射到html
* @param obj: json数据
* @param type: 映射类型（text：值映射为innerHTML；其他：值映射为value）
* @param path: 根路径，name属性的映射前缀
**/
function parseJson2Html(obj, type, path) {
    var props = {};
    for (var key in obj) {
        var propPath = path;
        if (path) propPath = path + '.' + key;
        else propPath = key;

        if (typeof obj[key] === 'object') arguments.callee(obj[key], type, propPath);
        else {
            propPath = propPath.replace(/\.(\d+)\./g, '[+$1+].').replace(/[+]/g, '');
            props[propPath] = obj[key];
        }
    }
    /* 数据映射到 html */
    for (var key in props) {
        var doms = document.querySelectorAll("[name='" + key + "']");
        if (doms.length == 0) continue;
        for (var domIndex in doms) setValue(doms[domIndex], props[key]);
    }
    function setValue(domObj, value) {
        if (domObj.type == 'radio' || domObj.type == 'checkbox') {// 扩展radio、checkbox
            if (domObj.type == 'radio') {
                if (domObj.value == value) domObj.setAttribute('checked', true);
            } else {
                let checkboxs = value.split(',');
                if (checkboxs.indexOf(domObj.value) >= 0) domObj.setAttribute('checked', true);
            }
        } else if ((typeof (domObj.value) != 'undefined') && (domObj.value + '') != (value + '') && type != 'text') {
            domObj.value = value; }
        else if (domObj.innerText != (value + '') || domObj.innerHTML != (value + '')) { domObj.innerHTML = value; }
    }
}

