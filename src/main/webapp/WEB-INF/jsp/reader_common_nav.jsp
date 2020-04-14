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
        <div class="avatar"><img src="img/avatar-6.jpg" alt="..." class="img-fluid rounded-circle"></div>
        <div class="title">
            <h1 class="h5">${readercard.name}, 已登录</h1>
            <p>用户</p>
        </div>
    </div>
    <!-- Sidebar Navidation Menus--><span class="heading">读者</span>
    <ul class="list-unstyled">
        <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>我的管理</a>
            <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                <li><a href="reader_books.html">图书查询</a></li>
                <li><a href="reader_info.html">个人信息</a></li>
                <li><a href="mylend.html">我的借还</a></li>
                <li><a href="reader_repasswd.html">密码修改</a></li>
            </ul>
        </li>
    </ul>
</nav>