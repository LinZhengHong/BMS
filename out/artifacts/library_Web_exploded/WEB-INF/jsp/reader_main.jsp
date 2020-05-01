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
                <h2 class="h5 no-margin-bottom">Home</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">读者</a></li>
                <li class="breadcrumb-item active">Home        </li>
            </ul>
        </div>
        <section class="no-padding-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="line-chart block chart">
                            <div class="title"><strong>😀</strong></div>
                            <canvas id="lineChartCustom1"></canvas>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="lin-chart block chart">
                            <div class="title"><strong>😀</strong></div>
                            <div class="line-chart chart margin-bottom-sm">
                                <canvas id="lineChartCustom2"></canvas>
                            </div>
                            <div class="line-chart chart">
                                <canvas id="lineChartCustom3"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="chart block">
                            <div class="title"> <strong>😀</strong></div>
                            <div class="bar-chart chart margin-bottom-sm">
                                <canvas id="barChartCustom1"></canvas>
                            </div>
                            <div class="bar-chart chart">
                                <canvas id="barChartCustom2"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="bar-chart block chart">
                            <div class="title"><strong>😀</strong></div>
                            <div class="bar-chart chart">
                                <canvas id="barChartCustom3"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="pie-chart chart block">
                            <div class="title"><strong>😀</strong></div>
                            <div class="pie-chart chart margin-bottom-sm">
                                <canvas id="pieChartCustom1"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="doughnut-chart chart block">
                            <div class="title"><strong>😀</strong></div>
                            <div class="doughnut-chart chart margin-bottom-sm">
                                <canvas id="doughnutChartCustom1"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="polar-chart chart block">
                            <div class="title"><strong>😀</strong></div>
                            <div class="polar-chart chart margin-bottom-sm">
                                <canvas id="polarChartCustom"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="radar-chart chart block">
                            <div class="title"><strong>😀</strong></div>
                            <div class="radar-chart chart margin-bottom-sm">
                                <canvas id="radarChartCustom"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>

</body>
</html>
