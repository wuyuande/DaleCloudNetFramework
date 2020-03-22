/*!
* 通过调用百度Map地图API实现调用手机GPS定位获取位置坐标
* 需要在页面中引用：<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=sPgakGNZ3Lq1wrUA0pqnqdl11BNDsDqp"></script>
* 其中 v表示版本号，ak表示申请的key秘钥；使用前先到百度申请
* Creater：吴远德_Dale
*/

/*
    //关于状态码
    //BMAP_STATUS_SUCCESS	检索成功。对应数值“0”。
    //BMAP_STATUS_CITY_LIST	城市列表。对应数值“1”。
    //BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值“2”。
    //BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值“3”。
    //BMAP_STATUS_INVALID_KEY	非法密钥。对应数值“4”。
    //BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值“5”。
    //BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值“6”。(自 1.1 新增)
    //BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值“7”。(自 1.1 新增)
    //BMAP_STATUS_TIMEOUT	超时。对应数值“8”。(自 1.1 新增)
*/

/*
* 获取定位的经纬度坐标点
*/
function GetMapLocationXy(lat, lng) {
    var errmsg = "";
    // 百度地图API功能
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            function (p) {
                var latitude = p.coords.latitude;//获取坐标点纬度  
                var longitude = p.coords.longitude;//获取坐标点经度  
                //以指定的经度与纬度创建一个坐标点  
                var po = new BMap.Point(longitude, latitude);
                //创建一个地理解析器  
                var geocoder = new BMap.Geocoder();
                //获取位置  
                geocoder.getLocation(po, function (rs) {
                    //获取地理组件  
                    var addComp = rs.addressComponents;
                    //获取省份  
                    var province = addComp.province;
                    //获取城市  
                    var city = addComp.city;
                    //获取区县  
                    var district = addComp.district;
                    //获取街道  
                    var street = addComp.street;
                    //获取街道号  
                    var streetNumber = addComp.streetNumber;
                    if (para == 0) {
                        address.val(province + city + district + street + streetNumber);//将获取到的信息输出到页面 
                    } else if (para == 1) {
                        address.val(street + streetNumber);//将获取到的信息输出到页面 
                    }
                    lat.val(p.coords.latitude);//获取坐标点纬度  
                    lng.val(p.coords.longitude);//获取坐标点经度  
                });
            }, function (e) {
                switch (e.code) {
                    case e.TIMEOUT:
                        alert("定位失败，请求获取用户位置超时");
                        break;
                    case e.PERMISSION_DENIED:
                        alert("您拒绝了使用位置服务功能，查询已取消");
                        break;
                    case e.POSITION_UNAVAILABLE:
                        alert("抱歉，暂时无法为您所在的星球提供位置服务");
                        break;
                    case e.UNKNOWN_ERROR:
                        alert("发生一个位置错误");
                        break;
                }
                return;
            }, {
                //指示浏览器获取高精度的位置，默认false  
                enableHighAcuracy: true,
                //指定获取地理位置的超时时间，默认不限时，单位为毫秒  
                timeout: 5000,
                //最长有效期，在重复获取地理位置时，此参数指定多久再次获取位置  
                maximumAge: 2000
            }
        );
    } else {
        alert("不支持");
    }

}

/*======================================================
* 根据百度API获取定位的地址,返回一个json对象
* 对象参数
*======================================================*/
function getCurrentPositionBaidu(callback) {
    var lacatdata = {
        state: 1,
        message: '定位成功',
        longitude: 0,
        latitude: 0,
        province: '',
        city: '',
        district: '',
        township: '',
        street: '',
        address: '',
        streetNumber: ''
    };
    // 百度地图API功能
    if (navigator.geolocation) {
        var geolocation = new BMap.Geolocation();
        geolocation.getCurrentPosition(function (r) {
            if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                var latitude = r.point.lat;//获取坐标点纬度  
                var longitude = r.point.lng;//获取坐标点经度  
                location.longitude = longitude;
                location.latitude = latitude;
                //以指定的经度与纬度创建一个坐标点  
                var po = new BMap.Point(longitude, latitude);
                //创建一个地理解析器  
                var geocoder = new BMap.Geocoder();
                //获取位置  
                geocoder.getLocation(po, function (rs) {
                    if(rs){
                        //获取地理组件  
                        var addComp = rs.addressComponents;
                        //获取省份  
                        lacatdata.province = addComp.province;
                        //获取城市  
                        lacatdata.city = addComp.city;
                        //获取区县  
                        lacatdata.district = addComp.district;
                        //获取街道 /街道号   
                        lacatdata.street = addComp.street + addComp.streetNumber;
                        callback(lacatdata);
                        return;
                    }
                });
            }else {
                //alert('failed' + this.getStatus());
                lacatdata.state = 0;
                lacatdata.message = this.getStatus();
                callback(lacatdata);
                return;
            }
        },
        function (e) {
            var msg = "";
            switch (e.code) {
                case e.TIMEOUT:
                    msg="定位失败，请求获取用户位置超时";
                    break;
                case e.PERMISSION_DENIED:
                    msg="您拒绝了使用位置服务功能，查询已取消";
                    break;
                case e.POSITION_UNAVAILABLE:
                    msg="抱歉，暂时无法为您所在的星球提供位置服务";
                    break;
                case e.UNKNOWN_ERROR:
                    msg="发生一个位置错误";
                    break;
            }
            lacatdata.state = 0;
            lacatdata.message = msg;
            callback(lacatdata);
            return;
        },
        {
            //指示浏览器获取高精度的位置，默认false  
            enableHighAcuracy: true,
            //指定获取地理位置的超时时间，默认不限时，单位为毫秒  
            timeout: 5000,
            //最长有效期，在重复获取地理位置时，此参数指定多久再次获取位置  
            maximumAge: 2000
        });
        
    } else {
        alert("不支持");
        lacatdata.state = 0;
        lacatdata.message = "不支持";
        callback(lacatdata);
        return ;
    }

}


/*======================================================
* 高德地图Map定位
* 需配合<script src="https://webapi.amap.com/maps?v=1.4.13&key=您申请的key值"></script>  使用
*======================================================*/
function getCurrentPositionAMap(callback) {
    var lacatdata = {
        state: 1,
        message:'定位成功',
        longitude: 0,
        latitude: 0,
        province: '',
        city: '',
        district: '',
        township: '',
        street: '',
        address: '',
        streetNumber: '',
        building: '',
        neighborhood:'',
        businessArea:'',

    };
    map = new AMap.Map('container', {
        resizeEnable: true
    });
    map.plugin('AMap.Geolocation', function() {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            maximumAge: 0,           //定位结果缓存0毫秒，默认：0
            convert: true,           //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
            showButton: false,        //显示定位按钮，默认：true
            showMarker: false,        //定位成功后在定位到的位置显示点标记，默认：true
            showCircle: false,        //定位成功后用圆圈表示定位精度范围，默认：true
            panToLocation: false,     //定位成功后将定位到的位置作为地图中心点，默认：true
            zoomToAccuracy: false      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
        });
   
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });
    function onComplete(data) {
        AMap.service(["AMap.Geocoder"], function () { //加载地理编码
            myGeo = new AMap.Geocoder();
            console.log(data.position.getLng());
            console.log(data.position.getLat());
            lacatdata.longitude = data.position.getLng();
            lacatdata.latitude = data.position.getLat();
            var gpsPoint = new AMap.LngLat(data.position.getLng(), data.position.getLat());
            console.log(gpsPoint);
            myGeo.getAddress(gpsPoint, function (status, result) {
                console.log(result);
                console.log(status);
                if (status === 'complete' && result.info === 'OK') {
                    lacatdata.province = result.regeocode.addressComponent.province;
                    lacatdata.city = result.regeocode.addressComponent.city == '' ? result.regeocode.addressComponent.province : result.regeocode.addressComponent.city;
                    lacatdata.district = result.regeocode.addressComponent.district;
                    lacatdata.township = result.regeocode.addressComponent.township;
                    lacatdata.street = result.regeocode.addressComponent.street;
                    lacatdata.address = result.regeocode.formattedAddress.replace(lacatdata.province, '').replace(lacatdata.city, '').replace(lacatdata.district, '').replace(lacatdata.township, '');
                    lacatdata.building = result.regeocode.addressComponent.building;
                    lacatdata.neighborhood = result.regeocode.addressComponent.neighborhood;
                    lacatdata.businessArea = result.regeocode.addressComponent.businessAreas.length > 0 ? result.regeocode.addressComponent.businessAreas[0] : "";
                    callback(lacatdata);
                }
                else
                {
                    onError(status);
                }
            });
        });
    }
    function onError(error) {
        //alert(error.message);
        lacatdata.state = 0;
        lacatdata.message = error.message;
        callback(lacatdata);
    }
}
