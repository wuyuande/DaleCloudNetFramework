var bizdatas = [];
$(function () {
    bizdatas = $.bizdatasInit();
})
$.bizdatasInit = function () {
    var dataJson = {
        dataItems: [],
        knowledgeCategory: [],
        productModel: [],
        dingTalkUsers: [],
        userItems: [],
        customerItems: [],
        dtUserInfo:null
    };
    var init = function () {
        $.ajax({
            url: "/BizData/GetClientsDataJson",
            type: "get",
            dataType: "json",
            async: false,
            success: function (data) {
                dataJson.dataItems = data.dataItems;
                dataJson.knowledgeCategory = data.knowledgeCategory;
                dataJson.productModel = data.productModel;
                dataJson.dingTalkUsers = data.dingTalkUsers;
                dataJson.userItems = data.userItems
                dataJson.customerItems = data.customerItems;
            }
        });
    }
    init();
    return dataJson;
}