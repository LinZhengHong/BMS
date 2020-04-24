<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>编辑《 ${detail.name}》</title>
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
                <h2 class="h3 no-margin-bottom">编辑《 ${detail.name}》</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">图书管理</a></li>
                <li class="breadcrumb-item active">编辑《 ${detail.name}》</li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="col-xs-6 col-md-offset-3 block" style="position: relative;">
                    <div class="panel-body">
                        <form action="book_edit_do.html?bookId=${detail.bookId}" method="post" id="addbook" >

                            <div class="form-group">
                                <label for="name">书名</label>
                                <input type="text" class="form-control" name="name" id="name" value="${detail.name}">
                            </div>
                            <div class="form-group">
                                <label for="author">作者</label>
                                <input type="text" class="form-control" name="author" id="author" value="${detail.author}" >
                            </div>
                            <div class="form-group">
                                <label for="publish">出版社</label>
                                <input type="text" class="form-control" name="publish" id="publish" value="${detail.publish}" >
                            </div>
                            <div class="form-group">
                                <label for="isbn">ISBN</label>
                                <input type="text" class="form-control" name="isbn" id="isbn" value="${detail.isbn}" >
                            </div>
                            <div class="form-group">
                                <label for="introduction">简介</label>
                                <input type="text" class="form-control" name="introduction" id="introduction" value="${detail.introduction}" >
                            </div>
                            <div class="form-group">
                                <label for="language">语言</label>
                                <input type="text" class="form-control" name="language" id="language" value="${detail.language}" >
                            </div>
                            <div class="form-group">
                                <label for="price">价格</label>
                                <input type="text" class="form-control" name="price" id="price" value="${detail.price}">
                            </div>
                            <div class="form-group">
                                <label for="pubstr">出版日期</label>
                                <input type="date" class="form-control" name="pubstr" id="pubstr" value="${detail.pubdate}">
                            </div>
                            <div class="form-group">
                                <label for="classId">分类号</label>
                                <input type="text" class="form-control" name="classId" id="classId" value="${detail.classId}">
                            </div>
                            <div class="form-group">
                                <label for="number">数量</label>
                                <input type="text" class="form-control" name="number" id="number" value="${detail.number}">
                            </div>
                            <input type="submit" value="确定" class="btn btn-primary">
                            <script>
                                $("#addbook").submit(function () {
                                    if($("#name").val()==''||$("#author").val()==''||$("#publish").val()==''||$("#isbn").val()==''||$("#introduction").val()==''||$("#language").val()==''||$("#price").val()==''||$("#pubstr").val()==''||$("#classId").val()==''||$("#number").val()==''){
                                        alert("请填入完整图书信息！");
                                        return false;
                                    }
                                })
                            </script>
                        </form>
                    </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>
</body>
</html>
