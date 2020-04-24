<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>编辑读者信息《 ${readerInfo.readerId}》</title>
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
                <h2 class="h3 no-margin-bottom">编辑读者信息《 ${readerInfo.readerId}》</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">读者管理</a></li>
                <li class="breadcrumb-item active">编辑读者信息《 ${readerInfo.readerId}》</li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="col-xs-6 col-md-offset-3 block" style="position: relative;">
                    <div class="panel-body">
                        <form action="reader_edit_do.html?readerId=${readerInfo.readerId}" method="post" id="readeredit" >
                            <div class="from-group">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control" name="name" id="name" value="${readerInfo.name}" >
                            </div>
                            <div class="form-group">
                                <label for="sex">性别</label>
                                <input type="text" class="form-control" name="sex" id="sex" value="${readerInfo.sex}" >
                            </div>
                            <div class="form-group">
                                <label for="birth">生日</label>
                                <input type="text" class="form-control" name="birth" id="birth" value="${readerInfo.birth}" >
                            </div>
                            <div class="form-group">
                                <label for="address">地址</label>
                                <input type="text" class="form-control" name="address" id="address" value="${readerInfo.address}" >
                            </div>
                            <div class="form-group">
                                <label for="phone">电话</label>
                                <input type="text" class="form-control" name="phone" id="phone" value="${readerInfo.phone}" >
                            </div>
                            <input type="submit" value="确定" class="btn btn-primary">
                            <script>
                                $("#readeredit").submit(function () {
                                    if($("#name").val()==''||$("#sex").val()==''||$("#birth").val()==''||$("#address").val()==''||$("#phone").val()==''){
                                        alert("请填入完整读者信息！");
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
