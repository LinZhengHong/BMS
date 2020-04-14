<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>全部图书信息</title>
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
    <jsp:include page="reader_common_nav.jsp"/>
    <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">全部图书</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">图书查询</a></li>
                <li class="breadcrumb-item active">我的管理        </li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="block pt-3">
                <form method="post" action="reader_querybook_do.html" class="form" id="searchform">
                    <div class="input-group">
                        <input type="text" placeholder="输入图书名" class="form-control" id="search" name="searchWord">
                        <span class="input-group-btn">
                            <input type="submit" value="搜索" class="btn btn-danger"/>
                        </span>
                    </div>
                </form>
                <script>
                    $("#searchform").submit(function () {
                        var val = $("#search").val();
                        if (val == '') {
                            alert("请输入关键字");
                            return false;
                        }
                    })
                </script>
            </div>
            <div style="position: relative;top: 10%">
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
            <div class="panel panel-default" style="width: 100%;">

                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>书名</th>
                            <th>作者</th>
                            <th>出版社</th>
                            <th>ISBN</th>
                            <th>价格</th>
                            <th>剩余数量</th>
                            <th>借还</th>
                            <th>详情</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${books}" var="book">
                            <tr>
                                <td><c:out value="${book.name}"></c:out></td>
                                <td><c:out value="${book.author}"></c:out></td>
                                <td><c:out value="${book.publish}"></c:out></td>
                                <td><c:out value="${book.isbn}"></c:out></td>
                                <td><c:out value="${book.price}"></c:out></td>
                                <td><c:out value="${book.number}"></c:out></td>

                                <c:set var="flag" value="false"/>
                                <c:forEach var="lend" items="${myLendList}">
                                    <c:if test="${lend eq book.bookId}">
                                        <c:set var="flag" value="true"/>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${flag}">
                                    <td><a href="returnbook.html?bookId=<c:out value="${book.bookId}"></c:out>">
                                        <button type="button" class="btn btn-danger btn-xs">归还</button>
                                    </a></td>
                                </c:if>
                                <c:if test="${not flag}">
                                    <c:if test="${book.number>0}">
                                        <td><a href="lendbook.html?bookId=<c:out value="${book.bookId}"></c:out>">
                                            <button type="button" class="btn btn-primary btn-xs">借阅</button>
                                        </a></td>
                                    </c:if>
                                    <c:if test="${book.number==0}">
                                        <td>
                                            <button type="button" class="btn btn-defalut btn-xs" disabled="disabled">已空</button>
                                        </td>
                                    </c:if>
                                </c:if>
                                <td><a href="reader_book_detail.html?bookId=<c:out value="${book.bookId}"></c:out>">
                                    <button type="button" class="btn btn-success btn-xs">详情</button>
                                </a></td>
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
