$(function(){
    $("#btn1").click(function () {
        $.ajax({
            type : "GET",
            url : "/m/firstmenu",
            dataType : "json",
            success : function (data) {
                console.log(data);
                menu.add(data,"menu");
                // alert("sddd0");
                // for (var i in data)
                // {
                // var i = 'meun';
                //     $('#mymeun').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + i +"\'>" + i + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                //     for(var j in data[i])
                //     {
                //         var k = data[i][j];
                //         $('#' + i).next(':first').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + k +"\'>" + k + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                //         if (data[k] != null)
                //         {
                //             console.log(k);
                //             console.log(data[k]);
                //             for(var key in data[k])
                //             {
                //                 console.log("key:" + key);
                //                 console.log("value:" + data[k][key]);
                //                 $('#' +k).next(':first').append("<li><a href=\"#\" id=\'" + data[k][key] +"\'>" + data[k][key] + "</a></li>");
                //             }
                //         }
                //     }
                     $("#btn1").html("menu");
                //}

            },
            error : function (data) {
                console.log(data);
                alert("sddd1");
            }
        });
    });
});

var menu = {

    add: function (data,str) {
        //var temp = eval("data[" + str + "]");
        //alert(temp);
        var array = data[str];
        if (data.hasOwnProperty(str))
        {
            for (var i in array)
            {//typeof data[temp]
                //console.log("i:" + array[i]);
                if(str === 'menu')
                {
                    var temp = array[i];
                    if (data.hasOwnProperty(temp))
                    {
                        $('#' + str).append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + temp +"\'>" + temp + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                        menu.add(data, temp);
                    }
                    else
                    {
                        $('#' + str).append("<li><a href=\"#\" id=\'" + temp +"\'>" + temp + "</a></li>");
                    }
                }
                else
                {
                    var temp = array[i];
                    if (data.hasOwnProperty(temp))
                    {
                        $('#' + str).next(':first').append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + temp +"\'>" + temp + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
                        menu.add(data, temp);
                    }
                    else
                    {
                        $('#' + str).next(':first').append("<li><a href=\"#\" id=\'" + temp +"\'>" + temp + "</a></li>");
                    }
                }

            }
        }
        else
        {
            console.log("null is ");
            //$('#' + str).next(':first').append("<li><a href=\"#\" id=\'" + k +"\'>" + k + "</a></li>");
        }
        //append("<li class=\"dropdown-submenu\"><a href=\"#\" id=\'" + i +"\'>" + i + "</a><ul class=\"dropdown-menu\"></a></ul></li>");
        }
    };