//获取URL地址参数
+function ($) {
    $.getQueryString = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return decodeURI(r[2]); return null;
    }
}($);

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

/*
* 在钉钉应用内跳转页面
* {
  url:'',//post地址
  isloading:是否显示loading 1显示 0不显示
  funname:调用方法名称
  funobj:调用方法参数
}
*/
+function ($) {
$.submitForm = function (options) {
    var defaults = {
        url: "",
        param: [],
        loading: "正在提交数据...",
        success: null,
        close: true
    };
    var options = $.extend(defaults, options);
    $.showLoading(options.loading);
    window.setTimeout(function () {
        if ($('[name=__RequestVerificationToken]').length > 0) {
            if (typeof (options.param) == Object) {
                options.param.__RequestVerificationToken = $('[name=__RequestVerificationToken]').val();
            } else if (typeof (options.param) ==undefined ||  options.param.length==0){
                options.param = options.param+"?__RequestVerificationToken="+$('[name=__RequestVerificationToken]').val();
            } else {
                options.param = options.param + "&__RequestVerificationToken=" + $('[name=__RequestVerificationToken]').val();
            }
        }
        console.log(options.param);
        $.ajax({
            url: options.url,
            data: options.param,
            type: "post",
            dataType: "json",
            success: function (data) {
                $.hideLoading();
                if (data.state == 'success') {
                    options.success(data);
                    $.toast("操作成功");
                } else {
                    $.toast(data.message, "text");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $.hideLoading();
                $.toast(errorThrown, "text");
            },
            beforeSend: function () {
                $.showLoading(options.loading);
            },
            complete: function () {
                $.hideLoading();
            }
        });
    }, 500);
}
}($);
//==================Ajax提交处理===============================

/*
{
  url：请求的地址
  data：发送的数据
  isloading:是否显示loading 
  success:成功时调用方法名称
  funobj:需要传入的参数
}
*/
+function ($) {
   
    $.ajaxPost = function (options) {
        var ajaxPostdefaults = {
            url: "",
            data: [],
            isloading: true,
            loading: "正在提交数据...",
            success: null,
            funobj: {}
        };
        options = $.extend(ajaxPostdefaults, options);
        if (!options.funobj) {
            options["funobj"] = {};
        }
        if (options.isloading) {
            $.showLoading(options.loading);
        }
        options.data["ajaxtype"] = "post";
        $.ajax({
            dataType: 'json',
            data: options.data,
            type: 'post',
            url: options.url,
            success: function (res, textStatus, jqXHR) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
                if (typeof (options.success) == "function") {
                    var resultdata = {
                        result: res.data,
                        state: res.state,
                        message: res.message,
                        res: res,
                        jqXHR: jqXHR.getResponseHeader("docId"), //获取sid
                        funobj: options.funobj
                    }
                    options.success(resultdata);
                }
            },
            error: function (res) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
            }
        });
    }
}($);
/*
{
  url：请求的地址
  data：请求的参数
  isloading:是否显示loading 
  success:成功时调用方法名称
  funobj:需要传入的参数
}
*/
+function ($) {
    $.ajaxGet = function (options) {
        var ajaxGetdefaults = {
            url: "",
            data: [],
            isloading: true,
            loading: "正在请求数据...",
            pagination: false,
            rows: 20,
            page: 1,
            records: 0,
            total: 0,
            sord: "asc",
            sidx: "T_Id",
            success: null,
            funobj: {}
        };
        options = $.extend(ajaxGetdefaults, options);
        if (!options.funobj) {
            options["funobj"] = {};
        }
       
        if (options.pagination) {
            options.data["sord"] = options.sord;
            options.data["sidx"] = options.sidx;
            options.data["rows"] = options.rows;
            options.data["page"] = options.page;
            options.data["records"] = options.records;
            options.data["total"] = options.total;
        }
        if (options.isloading) {
            $.showLoading(options.loading);
        }
        options.data["ajaxtype"] = "get";
        $.ajax({
            dataType: 'json',
            data: options.data,
            type: 'get',
            url: options.url,
            success: function (res, textStatus, jqXHR) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
                if (typeof (options.success) == "function") {
                    var resultdata = {
                        result: res.data,
                        state: res.state,
                        message: res.message,
                        page: options.page,
                        res: res,
                        jqXHR:jqXHR.getResponseHeader("docId"), //获取sid
                        funobj:options.funobj
                    }
                    options.success(resultdata);
                }
            },
            error: function (res) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
            }
        });
    }
}($);

/*
* 页面跳转
* url:链接地址
* customerId:客户Id
* keyValue:关键参数
*/
+function ($) {
    $.redirectTo = function (url, customerId, keyValue) {
        if (customerId == "") {
            window.location.href = url + "?keyValue=" + keyValue;
        } else {
            window.location.href = url + "?customerId=" + customerId + "&keyValue=" + keyValue;
        }
    }

}($);

/*
* 分页查询列表
* url:链接地址
* customerId:客户Id
* keyValue:关键参数
*/
+function ($) {
    $.Pagination = function (url, customerId, keyValue) {
        if (customerId == "") {
            window.location.href = url + "?keyValue=" + keyValue;
        } else {
            window.location.href = url + "?customerId=" + customerId + "&keyValue=" + keyValue;
        }
    }

    $.Pagination = function (options) {
        var paginationDefaults = {
            userid: "",
            state: -1,
            keyword: "",
            rows: 20,
            page: 1,
            records: 0,
            total: 0,
            sord: "asc",
            sidx: "T_CreateTime"
        };
        options = $.extend(paginationDefaults, options);
        if (!options.funobj) {
            options["funobj"] = {};
        }
        if (options.isloading) {
            $.showLoading(options.loading);
        }
        options.data["ajaxtype"] = "get";
        $.ajax({
            dataType: 'json',
            data: options.data,
            type: 'get',
            url: options.url,
            success: function (res, textStatus, jqXHR) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
                if (typeof (options.success) == "function") {
                    var resultdata = {
                        result: res.data,
                        state: res.state,
                        message: res.message,
                        res: res,
                        jqXHR: jqXHR.getResponseHeader("docId"), //获取sid
                        funobj: options.funobj
                    }
                    options.success(resultdata);
                }
            },
            error: function (res) {
                console.log(res);
                if (options.isloading) {
                    $.hideLoading();
                }
            }
        });
    }
}($);

//==================日期格式转换=====================================

//获取当前日期（指定格式）
function GetDateTimeNow(_type) {
    var date = new Date();
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    if (_type == 'date') {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d);
    } else if (_type == 'datetime') {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    } else if (_type == 'yyyy-MM-dd hh时') {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + " " + date.getHours() + "时";
    } else {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    }
}

//日期格式转化
function myformatter() {
    var date = new Date();
    return setmyformatter(date, "");
}
function myformatter(type) {
    var date = new Date();
    return setmyformatter(date, type);

}
function myformatter(type, _date) {
    var date = new Date();
    if (_date != "" && _date != undefined) {
        var date = new Date(_date.replace("-", "/").replace("-", "/"));
    }
    return setmyformatter(date, type);
}
function setmyformatter(_date, _type) {
    var date = new Date(_date);
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    if (_type == 'date') {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d);
    } else if (_type == 'datetime') {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    } else {
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    }
}
function myformatterAddYear(type, _year, _date) {
    var date = new Date();
    if (_date == "" || _date == undefined) {

    } else {
        var date = new Date(_date.replace("-", "/").replace("-", "/"));
    }
    if (_year != "" && _year != undefined) {
        _year = parseInt(_year);
    } else {
        _year = 1;
    }
    date.setFullYear(date.getFullYear() + _year);
    return setmyformatter(date, type);
}
function myformatterAddMonth(type, _month, _date) {
    var date = new Date();
    if (_date == "" || _date == undefined) {

    } else {
        var date = new Date(_date.replace("-", "/").replace("-", "/"));
    }
    if (_month != "" && _month != undefined) {
        _month = parseInt(_month);
    } else {
        _month = 1;
    }
    date.setMonth(date.getMonth() + _month);
    return setmyformatter(date, type);
}
function myformatterAddDate(type, _day, _date) {
    var date = new Date();
    if (_date == "" || _date == undefined) {

    } else {
        var date = new Date(_date.replace("-", "/").replace("-", "/"));
    }
    if (_day != "" && _day != undefined) {
        _day = parseInt(_day);
    } else {
        _day = 1;
    }
    date.setDate(date.getDate() + _day);
    return setmyformatter(date, type);
}


