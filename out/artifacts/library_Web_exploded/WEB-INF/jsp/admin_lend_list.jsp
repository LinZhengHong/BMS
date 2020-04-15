<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>借还日志</title>
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
                <h2 class="h3 no-margin-bottom">借还日志</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">借还管理</a></li>
                <li class="breadcrumb-item active">借还日志</li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div style="position: relative;">
                <c:if test="${!empty succ}">
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">
                            &times;
                        </button>
                            ${succ}
                    </div>
                </c:if>
                <c:if test="${!empty error}">
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">
                            &times;
                        </button>
                            ${error}
                    </div>
                </c:if>
            </div>
            <div class="panel panel-default block">
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>流水号</th>
                            <th>图书号</th>
                            <th>读者证号</th>
                            <th>借出日期</th>
                            <th>归还日期</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="alog">
                            <tr>
                                <td><c:out value="${alog.ser_num}"></c:out></td>
                                <td><c:out value="${alog.bookId}"></c:out></td>
                                <td><c:out value="${alog.readerId}"></c:out></td>
                                <td><c:out value="${alog.lendDate}"></c:out></td>
                                <td><c:out value="${alog.backDate}"></c:out></td>
                                <td>
                                    <a href="deletelend.html?serNum=<c:out value='${alog.ser_num}'></c:out>">
                                        <c:if test="${!empty alog.backDate}">
                                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                                        </c:if>
                                        <c:if test="${empty alog.backDate}">
                                            <button type="button" class="btn btn-default btn-xs" disabled="disabled">删除</button>
                                        </c:if>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>
</body>
</html>
