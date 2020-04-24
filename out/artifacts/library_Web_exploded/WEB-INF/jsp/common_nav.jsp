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
        <div class="avatar"><img src="${pageContext.request.contextPath}/static/img/tanilang2.png" alt="..." class="img-fluid rounded-circle"></div>
        <div class="title">
            <h1 class="h5">${admin.username}, 已登录</h1>
            <p>网站管理员</p>
        </div>
    </div>
    <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
    <ul class="list-unstyled">
        <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-university" aria-hidden="true"></i>图书管理</a>
            <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                <li><a href="admin_books.html">全部图书</a></li>
                <li><a href="book_add.html">新增图书</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-address-card" aria-hidden="true"></i>读者管理</a>
            <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                <li><a href="allreaders.html">全部读者</a></li>
                <li><a href="reader_add.html">增加读者</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-credit-card-alt" aria-hidden="true"></i>借还管理</a>
            <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                <li><a href="lendlist.html">借还日志</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-eye" aria-hidden="true"></i>修改密码 </a>
            <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                <li><a href="admin_repasswd.html">修改密码</a></li>
            </ul>
        </li>
    </ul>
</nav>