<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>秒杀列表页</title>
    <%@include file="common/head.jsp" %>
</head>

<body>
<!-- Buttons 库的核心文件 -->
<link rel="stylesheet" href="/resource/css/buttons.css">
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>秒杀列表</h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">

                <thead>
                <tr>
                    <td>编号</td>
                    <td>名称</td>
                    <td>库存</td>
                    <td>开始时间</td>
                    <td>结束时间</td>
                    <td>创建时间</td>
                    <td>详情页</td>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="sk" items="${list}">
                    <tr>
                        <td>${sk.seckillId}</td>
                        <td>${sk.name}</td>
                        <td>${sk.number}</td>
                        <td>
                            <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                        <td>
                            <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                        <td>
                            <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                        <td>
                            <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" 　target="_blank">Link</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>
    </div>
    <div><a href="http://www.bootcss.com/" class="button button-glow button-rounded button-raised button-primary">Go</a>
        <a href="http://www.bootcss.com/" class="button button-glow button-border button-rounded button-primary">Go</a>
        <button class="button button-glow button-circle button-action button-jumbo"><i class="fa fa-thumbs-up"></i>
        </button>
        <a href="http://www.bootcss.com/" class="button button-glow button-rounded button-highlight">Go</a>
        <a href="http://www.bootcss.com/" class="button button-glow button-rounded button-caution">Go</a>
        <a href="http://www.bootcss.com/" class="button button-glow button-rounded button-royal">Go</a></div>
    <div><a href="http://www.bootcss.com/" class="button button-raised button-primary button-pill">Visit Us!</a>
        <button class="button button-raised button-action button-circle button-jumbo"><i class="fa fa-thumbs-up"></i>
        </button>
        <a href="http://www.bootcss.com/" class="button button-raised button-caution"><i class="fa fa-camera"></i>
            Go</a>
        <a href="http://www.bootcss.com/" class="button button-raised button-royal">Say Hi!</a>
        <a href="http://www.bootcss.com/" class="button button-raised button-pill button-inverse">Say Hi!</a></div>


</div>

</body>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</html>