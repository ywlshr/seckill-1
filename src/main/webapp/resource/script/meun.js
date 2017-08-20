$(function () {
    $("#btn1").click(function () {
        $.ajax({
            type: "GET",
            url: "/task/menu",
            dataType: "json",
            success: function (data) {
                console.log(data);
                menu.add(data, "OpenStack");
                $("#btn1").html("OpenStack");

            },
            error: function (data) {
                console.log(data);
                alert("sddd1");
            }
        });
    });
});

var menu = {

    add: function (data, str) {
        var array = data[str];
        if (data.hasOwnProperty(str)) {
            for (var i in array) {//typeof data[temp]
                if (str === 'OpenStack') {
                    var temp = array[i];
                    if (data.hasOwnProperty(temp)) {
                        $('#' + str).append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + temp + "\'>" + temp + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                        menu.add(data, temp);
                    }
                    else {
                        $('#' + str).append("<li><a href=\"#\" id=\'" + temp + "\'>" + temp + "</a></li>");
                    }
                }
                else {
                    var temp = array[i];
                    if (data.hasOwnProperty(temp)) {
                        $('#' + str).next(':first').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + temp + "\'>" + temp + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                        menu.add(data, temp);
                    }
                    else {
                        $('#' + str).next(':first').append("<li><a href=\"#\" id=\'" + temp + "\'>" + temp + "</a></li>");
                    }
                }

            }
        }
        else {
            console.log("null is ");
        }
    }
};