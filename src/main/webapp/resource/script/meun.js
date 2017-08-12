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
                    $('#mymeun').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + i +"\'>" + i + "</a><ul class=\"dropdown-menu\"></a>");
                    for(var j in data[i])
                    {
                        $('#' + i).next(':first').append("<li><a href=\"#\" id=\'" + data[i][j] +"\'>" + data[i][j] + "</a></li>");
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