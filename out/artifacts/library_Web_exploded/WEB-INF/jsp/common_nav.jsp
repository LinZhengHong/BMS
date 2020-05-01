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
        <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse">
            <svg class="bi bi-book-half text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3.214 1.072C4.813.752 6.916.71 8.354 2.146A.5.5 0 0 1 8.5 2.5v11a.5.5 0 0 1-.854.354c-.843-.844-2.115-1.059-3.47-.92-1.344.14-2.66.617-3.452 1.013A.5.5 0 0 1 0 13.5v-11a.5.5 0 0 1 .276-.447L.5 2.5l-.224-.447.002-.001.004-.002.013-.006a5.017 5.017 0 0 1 .22-.103 12.958 12.958 0 0 1 2.7-.869zM1 2.82v9.908c.846-.343 1.944-.672 3.074-.788 1.143-.118 2.387-.023 3.426.56V2.718c-1.063-.929-2.631-.956-4.09-.664A11.958 11.958 0 0 0 1 2.82z" clip-rule="evenodd"/>
            <path fill-rule="evenodd" d="M12.786 1.072C11.188.752 9.084.71 7.646 2.146A.5.5 0 0 0 7.5 2.5v11a.5.5 0 0 0 .854.354c.843-.844 2.115-1.059 3.47-.92 1.344.14 2.66.617 3.452 1.013A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.276-.447L15.5 2.5l.224-.447-.002-.001-.004-.002-.013-.006-.047-.023a12.582 12.582 0 0 0-.799-.34 12.96 12.96 0 0 0-2.073-.609z" clip-rule="evenodd"/>
            </svg>
            图书管理</a>
            <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                <li><a href="admin_books.html">全部图书</a></li>
                <li><a href="book_add.html">新增图书</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse">
            <svg class="bi bi-person-fill text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" clip-rule="evenodd"/>
            </svg>
            读者管理</a>
            <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                <li><a href="allreaders.html">全部读者</a></li>
                <li><a href="reader_add.html">增加读者</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse">
            <svg class="bi bi-map text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M15.817.613A.5.5 0 0 1 16 1v13a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 14.51l-4.902.98A.5.5 0 0 1 0 15V2a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0l4.902.98 4.902-.98a.5.5 0 0 1 .415.103zM10 2.41l-4-.8v11.98l4 .8V2.41zm1 11.98l4-.8V1.61l-4 .8v11.98zm-6-.8V1.61l-4 .8v11.98l4-.8z" clip-rule="evenodd"/>
            </svg>
            借还管理</a>
            <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                <li><a href="lendlist.html">借还日志</a></li>
            </ul>
        </li>
        <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse">
            <svg class="bi bi-lock-fill text-primary" width="1.5em" height="1.5em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <rect width="11" height="9" x="2.5" y="7" rx="2"/>
                <path fill-rule="evenodd" d="M4.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z" clip-rule="evenodd"/>
            </svg>
            修改密码 </a>
            <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                <li><a href="admin_repasswd.html">修改密码</a></li>
            </ul>
        </li>
    </ul>
</nav>