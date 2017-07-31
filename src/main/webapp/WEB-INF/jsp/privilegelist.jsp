<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>权限列表页</title>
    <%@include file="common/head.jsp" %>
</head>

<body>
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

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    模态框（Modal）标题
                </h4>
            </div>
            <div class="modal-body">
                在这里添加一些文本
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="/resource/script/seckill.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#y00217209').on('show.bs.modal', function() {

        });
    });
</script>
</html>