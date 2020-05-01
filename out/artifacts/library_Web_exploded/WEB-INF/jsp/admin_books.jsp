<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <%--font Awesome--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
</head>
<body>

<jsp:include page="common_header.jsp"/>
<div class="d-flex align-items-stretch">
    <jsp:include page="common_nav.jsp"/>
    <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
            <div class="container-fluid">
                <h2 class="h3 no-margin-bottom">全部图书</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">图书管理</a></li>
                <li class="breadcrumb-item active">全部图书</li>
            </ul>
        </div>
        <section class="no-padding-top">
            <%--多条件搜索--%>
            <div class="block">
                <form method="post" action="querybook.html" class="form-inline"  id="searchform">
                    <div class="input-group">
                        <input type="text" placeholder="输入图书名" class="form-control" id="search" name="searchWord">
                        <span class="input-group-btn">
                            <input type="submit" value="搜索" class="btn btn-dark btn-2">
                        </span>
                    </div>
                    <div class="form-group block">
                        <label>
                            <select class="custom-select bg-dark">
                                <option class="text-primary" selected>根据分类号</option>
                                <option class="text-primary" value="1">马克思主义</option>
                                <option class="text-primary" value="2">哲学</option>
                                <option class="text-primary" value="3">社会科学总论</option>
                                <option class="text-primary" value="4">政治法律</option>
                                <option class="text-primary" value="5">军事</option>
                                <option class="text-primary" value="6">经济</option>
                                <option class="text-primary" value="7">文化</option>
                                <option class="text-primary" value="8">语言</option>
                                <option class="text-primary" value="9">文学</option>
                                <option class="text-primary" value="10">艺术</option>
                                <option class="text-primary" value="11">历史地理</option>
                                <option class="text-primary" value="12">自然科学总论</option>
                                <option class="text-primary" value="13"> 数理科学和化学</option>
                                <option class="text-primary" value="14">天文学、地球科学</option>
                                <option class="text-primary" value="15">生物科学</option>
                                <option class="text-primary" value="16">医药、卫生</option>
                                <option class="text-primary" value="17">农业科学</option>
                                <option class="text-primary" value="18">工业技术</option>
                                <option class="text-primary" value="19">交通运输</option>
                                <option class="text-primary" value="20">航空、航天</option>
                                <option class="text-primary" value="21">环境科学</option>
                                <option class="text-primary" value="22">综合</option>
                            </select>
                        </label>
                    </div>
                </form>
                <script>
                    $("#searchform").submit(function () {
                        var val=$("#search").val();
                        if(val==''){
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
            <div class="panel panel-default block" style="width: 100%;">
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th class="text-primary">书名</th>
                            <th class="text-primary">作者</th>
                            <th class="text-primary">出版社</th>
                            <th class="text-primary">ISBN</th>
                            <th class="text-primary">价格</th>
                            <th class="text-primary">剩余数量</th>
                            <th class="text-primary">详情</th>
                            <th class="text-primary">编辑</th>
                            <th class="text-primary">删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${pageInfo.list}" var="book" step="1">
                            <tr>
                                <td><c:out value="${book.name}"></c:out></td>
                                <td><c:out value="${book.author}"></c:out></td>
                                <td><c:out value="${book.publish}"></c:out></td>
                                <td><c:out value="${book.isbn}"></c:out></td>
                                <td><c:out value="${book.price}"></c:out></td>
                                <td class="text-center"><c:out value="${book.number}"></c:out></td>
                                <td><a href="admin_book_detail.html?bookId=<c:out value="${book.bookId}"></c:out>">
                                    <button type="button" class="btn btn-dark btn-xs">详情</button>
                                </a></td>
                                <td><a href="updatebook.html?bookId=<c:out value="${book.bookId}"></c:out>"><button type="button" class="btn btn-dark btn-xs">编辑</button></a></td>
                                <td><a href="deletebook.html?bookId=<c:out value="${book.bookId}"></c:out>"><button type="button" class="btn btn-dark btn-xs">删除</button></a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="mt-3">
                        <%--分页--%>
                        <nav class="Page navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a class="page-link" href="admin_books.html?pageNum=1" tabindex="-1" aria-disabled="true">首页</a>
                                </li>
                                <c:if test="${pageInfo.hasPreviousPage}">
                                    <li class="page-item">
                                        <a href="admin_books.html?pageNum=${pageInfo.prePage}" class="page-link">上一页</a>
                                    </li>
                                </c:if>
                                <c:forEach items="${pageInfo.navigatepageNums }" var="num" >
                                    <c:if test="${num==pageInfo.pageNum}">
                                        <li class="page-item">
                                            <a href="admin_books.html?pageNum=${num}" class="page-link">${num}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${num!=pageInfo.pageNum}">
                                        <li class="page-item">
                                            <a href="admin_books.html?pageNum=${num}" class="page-link">${num}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${pageInfo.hasNextPage }">
                                    <li class="page-item">
                                        <a href="admin_books.html?pageNum=${pageInfo.nextPage }" class="page-link">下一页</a>
                                    </li>
                                </c:if>
                                <li class="page-item">
                                    <a href="admin_books.html?pageNum=${pageInfo.pages}" class="page-link">末页</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>

<script src="${pageContext.request.contextPath}/static/js/anime.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>

</body>
</html>
