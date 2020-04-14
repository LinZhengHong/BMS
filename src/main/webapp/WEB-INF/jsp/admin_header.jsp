<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"  %>
<%--<nav style="position:fixed;z-index: 999;width: 100%;background-color: #25c6fc" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html" style="font-family: 华文行楷; font-size: 250%; color: white">图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_books.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">增加读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借还日志</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" style="color: white">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html" style="color: white">${admin.username}, 已登录</a>
                </li>
                <li><a href="logout.html" style="color: white">退出</a></li>
            </ul>
        </div>
    </div>
</nav>--%>
<%--<header class="header">
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex align-items-center justify-content-between">
            <div class="navbar-header">
                <!-- Navbar Header--><a href="index.html" class="navbar-brand">
                <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">图书预约管理系统 </strong><strong>System</strong></div>
                <div class="brand-text brand-sm"><strong class="text-primary">D</strong><strong>A</strong></div></a>
                <!-- Sidebar Toggle Btn-->
                <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
            </div>
            <div class="right-menu list-inline no-margin-bottom">
                <div class="list-inline-item"><a href="#" class="search-open nav-link"><i class="icon-magnifying-glass-browser"></i></a></div>

                <!-- Log out               -->
                <div class="list-inline-item logout">
                    <a id="logout" href="logout.html" class="nav-link"> <span class="d-none d-sm-inline">退出 </span><i class="icon-logout"></i></a>
                </div>
            </div>
        </div>
    </nav>
</header>--%>
<jsp:include page="common_header.jsp"/>
<div class="d-flex align-items-stretch">
    <jsp:include page="common_nav.jsp"/>
    <!-- Sidebar Navigation-->
    <%--<nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
&lt;%&ndash;            管理员头像&ndash;%&gt;
            <div class="avatar"><img src="img/avatar-6.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
                <h1 class="h5">${admin.username}, 已登录</h1>
                <p>网站管理员</p>
            </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>图书管理</a>
                <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                    <li><a href="admin_books.html">全部图书</a></li>
                    <li><a href="book_add.html">新增图书</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>读者管理</a>
                <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                    <li><a href="allreaders.html">全部读者</a></li>
                    <li><a href="reader_add.html">增加读者</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>借还管理</a>
                <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                    <li><a href="lendlist.html">借还日志</a></li>
                </ul>
            </li>
            <li><a href="admin_repasswd.html" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>修改密码 </a></li>
        </ul>
    </nav>--%>
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <!-- Page Header-->
        <%--<div class="page-header no-margin-bottom">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">Tables</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Tables        </li>
            </ul>
        </div>--%>
        <section class="no-padding-top">
            <!--显示内容-->
        </section>
        <%--<footer class="footer">
            <div class="footer__block block no-margin-bottom">
                <div class="container-fluid text-center">
                    <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                    <p class="no-margin-bottom">Copyright &copy; LinZhenHong2020</p>
                </div>
            </div>
        </footer>--%>
        <jsp:include page="common_footer.jsp"/>
    </div>
</div>
