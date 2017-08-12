<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>权限列表页</title>
    <%@include file="common/head.jsp" %>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
</head>

<body>

<style type="text/css">
    .dropdown-submenu {
        position: relative;
    }
    .dropdown-submenu > .dropdown-menu {
        top: 0;
        left: 100%;
        margin-top: -6px;
        margin-left: -1px;
        -webkit-border-radius: 0 6px 6px 6px;
        -moz-border-radius: 0 6px 6px;
        border-radius: 0 6px 6px 6px;
    }
    .dropdown-submenu:hover > .dropdown-menu {
        display: block;
    }
    .dropdown-submenu > a:after {
        display: block;
        content: " ";
        float: right;
        width: 0;
        height: 0;
        border-color: transparent;
        border-style: solid;
        border-width: 5px 0 5px 5px;
        border-left-color: #ccc;
        margin-top: 5px;
        margin-right: -10px;
    }
    .dropdown-submenu:hover > a:after {
        border-left-color: #fff;
    }
    .dropdown-submenu.pull-left {
        float: none;
    }
    .dropdown-submenu.pull-left > .dropdown-menu {
        left: -100%;
        margin-left: 10px;
        -webkit-border-radius: 6px 0 6px 6px;
        -moz-border-radius: 6px 0 6px 6px;
        border-radius: 6px 0 6px 6px;
    }
</style>
<!-- Buttons 库的核心文件 -->
<link rel="stylesheet" href="/resource/css/buttons.css">
<link rel="stylesheet" href="/resource/css/navbar.css">

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CodeTask</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../navbar/">Add</a></li>
                <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Dropdown
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="mymeun">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li><a href="#">Separated link</a></li>
            <li class="dropdown-submenu"><a href="#">gao3</a>
                <ul class="dropdown-menu">
                    <li><a href="#">qiao1</a></li>
                    <li><a href="#">qiao2</a></li>
                    <li><a href="#">qiao3</a></li>
                    <li class="dropdown-submenu"><a href="#">gao1111</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">qiao122</a></li>
                            <li><a href="#">qiao222</a></li>
                            <li><a href="#">qiao322</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
        <a class="btn btn-success button-longshadow-right" id="btn1">change</a>
    </div>

</div>


<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h1>权限列表</h1>
        </div>
        <div class="panel-body">
            <table class="table table-hover" style="font-size:18px;">

                <thead>
                <tr>
                    <td>工号</td>
                    <td>建库权限</td>
                    <td>拉分支权限</td>
                    <td>锁库权限</td>
                    <td>详情页</td>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="sk" items="${privilege}">
                    <tr>
                        <td>${sk.userid}</td>
                        <td>${sk.createProject}</td>
                        <td>${sk.createBranch}</td>
                        <td>${sk.lockProjectBranch}</td>
                        <td>
                            <a class="btn btn-success" role="button" data-toggle="modal" data-target="#myModal" data-trigger="focus" id="${sk.userid}" onclick="seckill.test.my()">Link</a>
                          <!--  <a class="btn btn-info" href="/privilege/${sk.userid}/detail" 　target="_blank">Link</a> -->
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>
    </div>
</div>

</body>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="/resource/script/seckill.js" type="text/javascript"></script>
<script src="/resource/script/meun.js"></script>
</html>