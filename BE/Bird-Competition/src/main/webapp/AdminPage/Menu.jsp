<%-- 
    Document   : Menu.jsp
    Created on : Oct 27, 2023, 11:18:58 PM
    Author     : Danh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="indexAdmin.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">BirdFighter Admin <sup></sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">


        <hr class="sidebar-divider d-none d-md-block">


        <!-- Heading -->
        <div class="sidebar-heading">
            Staff
        </div>


        <li class="nav-item">
            <a class="nav-link" href="AdminPage/index.jsp">
                <i class="fas fa-fw fa-table"></i>
                <span>Dashboard</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="Pages/AccountManagement.html">
                <i class="fas fa-fw fa-table"></i>
                <span>Quản lý tài khoản</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="Pages/BirdManagement.html">
                <i class="fas fa-fw fa-table"></i>
                <span>Quản lý danh sách Chim</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageSchedule"/>'>
                <i class="fas fa-fw fa-table"></i>
                <span>Quản lý lịch thi đấu</span></a>
        </li>      


        <li class="nav-item">
            <a class="nav-link" href="HappeningMatchServlet">
                <i class="fas fa-fw fa-table"></i>
                <span>Cập nhật kết quả trận đấu</span></a>
        </li> 
        <li class="nav-item">
            <!--<a class="nav-link" href='<c:url value="/DispatchServlet?btAction=Preparing"/>'>-->
            <a class="nav-link" href="PreparingMatchServlet">
                <i class="fas fa-fw fa-table"></i>
                <span>Check-in</span></a>
        </li> 
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        <!-- Heading -->
        <div class="sidebar-heading">
            Manager
        </div>


        <li class="nav-item">
            <a class="nav-link" href="https://sandbox.vnpayment.vn/merchantv2/">
                <i class="fas fa-fw fa-table"></i>
                <span>Quản lý thanh toán</span></a>
        </li>  

        <li class="nav-item">
            <a class="nav-link" href="">
                <i class="fas fa-fw fa-table"></i>
                <span>Quản lý Luật thi</span></a>
        </li>   

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">



        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
    </ul>
    <!-- End of Sidebar -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <!--                <form
                                    class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                               aria-label="Search" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>-->

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>


                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <c:set var="user" value="${sessionScope.USER}"/>
                            <span class="btn btn-primary nav-link dropdown-toggle h-75" style="width: 100px;">${user.userName}</span>
                            <%--<c:if test="${user.userRole == 1}">Admin</c:if>--%>
                            <%--<c:if test="${user.userRole == 2}">Manager</c:if>--%>
                            <%--<c:if test="${user.userRole == 3}">Staff</c:if>--%>
                            
                           
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <!--                            <a class="dropdown-item" href="#">
                                                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                                            Profile
                                                        </a>-->
                            <!--<div class="dropdown-divider"></div>-->
                            <a class="dropdown-item" href='<c:url value="/DispatchServlet?btAction=Logout"/>'>
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->
