$(function(){
    $("#btn1").click(function () {
        $.ajax({
            type : "GET",
            url : "/m/firstmeum",
            dataType : "json",
            success : function (data) {
                console.log(data);
                alert("sddd0");
                for (var i in data)
                {
                    $('#mymeun').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + i +"\'>" + i + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                    for(var j in data[i])
                    {
                        var k = data[i][j];
                        $('#' + i).next(':first').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + k +"\'>" + k + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                        if (data[k] != null)
                        {
                            console.log(k);
                            console.log(data[k]);
                            for(var key in data[k])
                            {
                                console.log("key:" + key);
                                console.log("value:" + data[k][key]);
                                $('#' +k).next(':first').append("<li><a href=\"#\" id=\'" + data[k][key] +"\'>" + data[k][key] + "</a></li>");
                            }
                        }
                    }
                    $("#btn1").html(i);
                }

            },
            error : function (data) {
                console.log(data);
                alert("sddd1");
            }
        });
    });
});