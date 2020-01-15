# DaleCloud.Framework框架介绍：
DaleCloud.Framework是一款基于NFine.Framework 改进而成的新C#.NET WEB框架，而NFine.Framework又是一套基于ASP.NET MVC+EF6+Bootstrap开发出来的框架，其核心版权最终解释权归《NFine团队》所有，但该团队好像对该框架放弃了，不再更新。

- 原项目地址：https://gitee.com/nfine/NFine
- 原开发者博客：https://www.cnblogs.com/huanglin
- 新项目demo：http://demo.dalecloud.cn/
-新项目文档：https://blog.csdn.net/wuyuander
# DaleCloud.Framework改进说明：
1. 针对原框架诟病的cookie后门，现在已经去除；
2. 将原版jqgrid数据列表风格改为easyUI—Bootstrap风格，除系统核心功能表单以外，其他form表单改为easyUI框架；
3. 将项目名及空间名前缀NFine改为DaleCloud；
4. 核心类code进行了重新整理并拓展了许多公共方法；
5. 引入Senparc.Weixin开源SDK，支持微信公众号接口（目前仅支持自定义菜单，自定义回复，模板消息，粉丝用户获取，移动端html5支持回调授权access_token）；
6. 支持钉钉平台接口（目前已支持大部分功能），支持钉钉H5微应用PC端及移动端开发；
7. 支持移动端html5开发，暂时使用jqweui框架，后期有空逐步改为vue版；
8. 支持阿里云短信平台接口；


# 前端以及后端使用技术介绍（括号内表示新版优化新增部分）：

1、前端技术

    JS框架：jquery-2.1.1、Bootstrap.js、JQuery UI，easyUI（新增框架）
    CSS框架：Bootstrap v3.3.4。
    客户端验证：jQuery Validation Plugin 1.9.0。
    在线编辑器：百度ueditor
    上传文件：Bootstrap-fileinput
    动态页签：Jerichotab（自己改造）
    数据表格：easyUI-datagrid、Bootstrap-Talbe
    对话框：layer-v2.3
    下拉选择框：jQuery Select2（已用easyUI代替）
    树结构控件：jQuery zTree、jQuery wdtree（已用easyUI代替）
    页面布局：jquery.layout.js 1.4.4
    图表插件：百度echarts、highcharts
    日期控件： My97DatePicker（已用easyUI代替）

2、后端技术

    核心框架：ASP.NET MVC5、WEB API
    持久层框架：EntityFramework 6.0
    定时计划任务：FluentScheduler.5.3.0组件
    安全支持：过滤器、Sql注入、请求伪造
    服务端验证：实体模型验证、自己封装Validator
    缓存框架：微软自带Cache、Redis
    日志管理：Log4net、登录日志、操作日志
    工具类：NPOI、Newtonsoft.Json、验证码、丰富公共类似
    
 3、SDK引入

    微信SDK：Senparc.Weixin.6.4.8，Senparc.Weixin.MP.16.7.9，Senparc.Weixin.MP.MVC.7.2.13
    钉钉SDK：TopSdk
    二维码：zxing

 #### 由于最近公司项目太忙，没来得及整理说明文档，等过完元旦我便开始陆续整理发布说明文档；有网友私信让我建一个群大家一起合力把这个框架完善。确实，这款框架本身就是开源框架，既然正主没有维护了，那我们就一起努力把他维护好。欢迎大家加群。群名称：NFineFramework（依然沿用原框架名）；群 号：920900045。验证码：dalecloud

 
