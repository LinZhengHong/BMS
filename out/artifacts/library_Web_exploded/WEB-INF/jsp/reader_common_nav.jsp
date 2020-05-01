<%--
  Created by IntelliJ IDEA.
  User: LinZhenHong
  Date: 2020/4/5
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav id="sidebar">
    <!-- Sidebar Header-->
    <div class="sidebar-header d-flex align-items-center">
        <%--            管理员头像--%>
        <div class="avatar"><img src="${pageContext.request.contextPath}/static/img/adminhead.jpg" alt="..." class="img-fluid rounded-circle"></div>
        <div class="title">
            <h1 class="h5">${readercard.name}, 已登录</h1>
            <p>用户</p>
        </div>
    </div>
    <!-- Sidebar Navidation Menus--><span class="heading">读者</span>
    <ul class="list-unstyled">
        <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse">
            <svg class="bi bi-bookmarks-fill text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M2 4a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v12l-5-3-5 3V4z" clip-rule="evenodd"/>
            <path d="M14 14l-1-.6V2a1 1 0 0 0-1-1H4.268A2 2 0 0 1 6 0h6a2 2 0 0 1 2 2v12z"/>
        </svg>我的管理</a>
            <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                <li><a href="reader_books.html">图书查询</a></li>
                <li><a href="reader_info.html">个人信息</a></li>
                <li><a href="mylend.html">我的借还</a></li>
                <li><a href="reader_repasswd.html">密码修改</a></li>
            </ul>
        </li>
    </ul>
</nav>