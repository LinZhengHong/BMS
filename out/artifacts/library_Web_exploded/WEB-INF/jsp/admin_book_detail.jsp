<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>图书详情</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <!-- JavaScript files-->
    <script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath}/static/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/front.js"></script>

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico">
</head>
<body>
<jsp:include page="common_header.jsp"/>
<div class="d-flex align-items-stretch">
    <jsp:include page="common_nav.jsp"/>
    <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
            <div class="container-fluid">
                <h2 class="h3 no-margin-bottom">图书详情</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">全部图书</a></li>
                <li class="breadcrumb-item active">图书详情</li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="col-xs-6 col-md-offset-3m block">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">《 ${detail.name}》</h3>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th width="15%">书名</th>
                                <td>${detail.name}</td>
                            </tr>
                            <tr>
                                <th>作者</th>
                                <td>${detail.author}</td>
                            </tr>
                            <tr>
                                <th>出版社</th>
                                <td>${detail.publish}</td>
                            </tr>
                            <tr>
                                <th>ISBN</th>
                                <td>${detail.isbn}</td>
                            </tr>
                            <tr>
                                <th>简介</th>
                                <td>${detail.introduction}</td>
                            </tr>
                            <tr>
                                <th>语言</th>
                                <td>${detail.language}</td>
                            </tr>
                            <tr>
                                <th>价格</th>
                                <td>${detail.price}</td>
                            </tr>
                            <tr>
                                <th>出版日期</th>
                                <td>${detail.pubdate}</td>
                            </tr>
                            <tr>
                                <th>分类号</th>
                                <td>${detail.classId}</td>
                            </tr>
                            <tr>
                                <th>数量</th>
                                <td>${detail.number}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>
</body>
</html>
