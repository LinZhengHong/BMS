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
                <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">图书预约管理系统 </strong></div>
                <div class="brand-text brand-sm"><strong class="text-primary">B</strong><strong class="text-primary">M</strong><strong class="text-primary">S</strong></div></a>
                <!-- Sidebar Toggle Btn-->
                <button class="sidebar-toggle">
                    <svg class="bi bi-reply-all-fill text-primary" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M8.079 11.9l4.568-3.281a.719.719 0 0 0 0-1.238L8.079 4.1A.716.716 0 0 0 7 4.719V6c-1.5 0-6 0-7 8 2.5-4.5 7-4 7-4v1.281c0 .56.606.898 1.079.62z"/>
                    <path fill-rule="evenodd" d="M10.868 4.293a.5.5 0 0 1 .7-.106l3.993 2.94a1.147 1.147 0 0 1 0 1.946l-3.994 2.94a.5.5 0 0 1-.593-.805l4.012-2.954a.493.493 0 0 1 .042-.028.147.147 0 0 0 0-.252.496.496 0 0 1-.042-.028l-4.012-2.954a.5.5 0 0 1-.106-.699z" clip-rule="evenodd"/>
                    </svg>
                </button>
            </div>
            <div class="right-menu list-inline no-margin-bottom">
                <%--<div class="list-inline-item"><a href="#" class="search-open nav-link"><i class="fa fa-user-circle" aria-hidden="true"></i></a></div>--%>

                <!-- Log out               -->
                <div class="list-inline-item logout">
                    <a id="logout" href="logout.html" class="nav-link">
                        <svg class="bi bi-box-arrow-in-right text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M8.146 11.354a.5.5 0 0 1 0-.708L10.793 8 8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z" clip-rule="evenodd"/>
                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 1 8z" clip-rule="evenodd"/>
                            <path fill-rule="evenodd" d="M13.5 14.5A1.5 1.5 0 0 0 15 13V3a1.5 1.5 0 0 0-1.5-1.5h-8A1.5 1.5 0 0 0 4 3v1.5a.5.5 0 0 0 1 0V3a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v10a.5.5 0 0 1-.5.5h-8A.5.5 0 0 1 5 13v-1.5a.5.5 0 0 0-1 0V13a1.5 1.5 0 0 0 1.5 1.5h8z" clip-rule="evenodd"/>
                        </svg>
                        <span class="d-none d-sm-inline">退出 </span>
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header>
