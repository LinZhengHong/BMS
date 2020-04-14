<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${readercard.name}的主页</title>
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
                <h2 class="h5 no-margin-bottom">Reader</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Reader</a></li>
                <li class="breadcrumb-item active">Tables        </li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="col-xs-5 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            信息修改
                        </h3>
                    </div>
                    <div class="panel-body">
                        <form action="reader_edit_do_r.html" method="post" id="edit" >
                            <div class="input-group">
                                <span  class="input-group-addon">读者证号</span>
                                <input type="text" readonly="readonly" class="form-control" name="readerId" id="readerId" value="${readerinfo.readerId}">
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">姓名</span>
                                <input type="text" class="form-control" name="name" id="name" value="${readerinfo.name}" >
                            </div>
                            <div class="input-group">
                                <span  class="input-group-addon">性别</span>
                                <input type="text" class="form-control" name="sex" id="sex"  value="${readerinfo.sex}" >
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">生日</span>
                                <input type="text" class="form-control" name="birth" id="birth"  value="${readerinfo.birth}" >
                            </div>
                            <div class="input-group">
                                <span  class="input-group-addon">地址</span>
                                <input type="text" class="form-control" name="address" id="address"  value="${readerinfo.address}" >
                            </div>
                            <div class="input-group">
                                <span  class="input-group-addon">电话</span>
                                <input type="text" class="form-control" name="phone" id="phone"  value="${readerinfo.phone}" >
                            </div>
                            <br/>
                            <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                            <script>
                                $("#edit").submit(function () {
                                    if($("#name").val()==''||$("#sex").val()==''||$("#birth").val()==''||$("#address").val()==''||$("#phone").val()==''){
                                        alert("请填入完整图书信息！");
                                        return false;
                                    }
                                })
                            </script>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>

</body>
</html>
