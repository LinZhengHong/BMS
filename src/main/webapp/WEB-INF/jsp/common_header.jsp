<%--
  Created by IntelliJ IDEA.
  User: LinZhenHong
  Date: 2020/4/5
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex align-items-center justify-content-between">
            <div class="navbar-header">
                <!-- Navbar Header--><a href="index.html" class="navbar-brand">
                <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">图书预约管理系统 </strong><strong>System</strong></div>
                <div class="brand-text brand-sm"><strong class="text-primary">B</strong><strong>M</strong><strong>S</strong></div></a>
                <!-- Sidebar Toggle Btn-->
                <button class="sidebar-toggle"><%--<i class="fa fa-long-arrow-left"></i>--%></button>
            </div>
            <div class="right-menu list-inline no-margin-bottom">
                <div class="list-inline-item"><a href="#" class="search-open nav-link"><i class="icon-magnifying-glass-browser"></i></a></div>

                <!-- Log out               -->
                <div class="list-inline-item logout">
                    <a id="logout" href="logout.html" class="nav-link"> <span class="d-none d-sm-inline">退出 </span><%--<i class="icon-logout"></i>--%></a>
                </div>
            </div>
        </div>
    </nav>
</header>
