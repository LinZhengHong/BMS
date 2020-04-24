<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>更改密码</title>
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
                <h2 class="h3 no-margin-bottom">更改密码</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">更改密码</a></li>
                <li class="breadcrumb-item active">更改密码</li>
            </ul>
        </div>
        <section class="no-padding-top">
        <div style="position: relative">
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
        <div class="col-xs-6 col-md-offset-3 block" style="position: relative;">
                <div class="panel-body">
                    <form method="post" action="admin_repasswd_do" class="form-inline" id="repasswd">
                        <div class="form-group">
                            <label for="oldPasswd">输入旧密码</label>
                            <input type="password" id="oldPasswd" name="oldPasswd" placeholder="输入旧密码" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="newPasswd">输入新密码</label>
                            <input type="password" id="newPasswd" name="newPasswd" placeholder="输入新密码" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="reNewPasswd">再次输入新密码</label>
                            <input type="password" id="reNewPasswd" name="reNewPasswd" placeholder="再次输入新密码"  class="form-control">
                        </div>
                            <em id="tishi" style="color: red"></em>
                            <br/>
                        <input type="submit" value="提交" class="btn btn-primary">

                    </form>
                </div>
        </div>
        <script>
            $(document).keyup(function () {
                if ($("#newPasswd").val() != $("#reNewPasswd").val() && $("#newPasswd").val() != "" && $("#reNewPasswd").val() != "" && $("#newPasswd").val().length == $("#reNewPasswd").val().length) {
                    $("#tishi").text("两次输入的新密码不同，请检查");
                } else {
                    $("#tishi").text("");
                }
            });

            $("#repasswd").submit(function () {
                if ($("#oldPasswd").val() == '' || $("#newPasswd").val() == '' || $("#reNewPasswd").val() == '') {
                    $("#tishi").text("请填写完毕后提交");
                    return false;
                } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
                    $("#tishi").text("两次输入的新密码不同，请检查");
                    return false;
                }
            })
        </script>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>
</body>
</html>
