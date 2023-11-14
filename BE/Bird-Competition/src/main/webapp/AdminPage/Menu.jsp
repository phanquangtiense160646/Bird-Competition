<%-- 
    Document   : Menu.jsp
    Created on : Oct 27, 2023, 11:18:58 PM
    Author     : Danh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Custom fonts for this template-->
    <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<!-- Page Wrapper -->
<c:set var="user" value="${sessionScope.USER}"/>
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">




        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href='<c:url value="/DispatchServlet?btAction=Dashboard"/>'>
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">BirdFighter Admin <sup></sup></div>
        </a>


        <!-- Divider -->
        <hr class="sidebar-divider my-0">


        <hr class="sidebar-divider d-none d-md-block">





        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Heading -->
        <c:if test="${user.userRole == 1}" >
            <li class="nav-item">
                <a class="nav-link" href=<c:url value="/DispatchServlet?btAction=Dashboard"/>>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Dashboard</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=<c:url value="/DispatchServlet?btAction=ShowAllMember"/>>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lý người dùng</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=<c:url value="/DispatchServlet?btAction=ShowAllStaffMember"/>>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lý nhân sự</span></a>
            </li>
        </c:if>
        <c:if test="${user.userRole == 3 or user.userRole == 2}" >

            <div class="sidebar-heading">
                Staff
            </div>


            <li class="nav-item">
                <a class="nav-link" href=<c:url value="/DispatchServlet?btAction=Dashboard"/>>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Dashboard</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageSchedule"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lý lịch thi đấu</span></a>
            </li>      
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageLocation"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lí địa điểm thi đấu</span></a>
            </li>
            <li class="nav-item">
       <!--<a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageFeedBack"/>'>-->
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageNews"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lý tin tức</span></a>
            </li> 
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=Current"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Cập nhật kết quả trận đấu</span></a>
            </li> 
            <li class="nav-item">
                <!--<a class="nav-link" href='<c:url value="/DispatchServlet?btAction=Preparing"/>'>-->
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=Preparing"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Check-in</span></a>
            </li> 


        </c:if>
        <c:if test="${user.userRole == 2 }" >
            <hr class="sidebar-divider d-none d-md-block">
            <div class="sidebar-heading">
                Manager
            </div>


            <li class="nav-item">
                <a class="nav-link" href="https://sandbox.vnpayment.vn/merchantv2/" target="_blank">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quản lý thanh toán</span></a>
            </li>  

            <!--            <li class="nav-item">
                            <a class="nav-link" href="">
                                <i class="fas fa-fw fa-table"></i>
                                <span>Quản lý Luật thi</span></a>
                        </li>   -->
            <li class="nav-item">
                <!--<a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageFeedBack"/>'>-->
                <a class="nav-link" href='<c:url value="/DispatchServlet?btAction=ManageFeedBack"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>User Feedback</span></a>
            </li> 
        </c:if>
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
                    <li class="nav-item dropdown no-arrow  h-100  d-inline-flex">
                        <c:if test="${user.userRole == 1}">                          
                            <p class="btn btn-secondary p-0 h-50" style="width: 70px; height: 50px;font-size: small; color: black; margin-top: 25px">Admin</p>
                        </c:if>
                        <c:if test="${user.userRole == 2}">
                            <p class="btn btn-secondary p-0 h-50" style="width: 70px; height: 50px;font-size: small; color: black; margin-top: 25px">Manager</p>

                        </c:if>
                        <c:if test="${user.userRole == 3}">
                            <p class="btn btn-secondary p-0 h-50" style="width: 70px; height: 50px;font-size: small; color: black; margin-top: 25px">Staff</p>
                        </c:if>
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="btn btn-primary h-50" style="width: 100px;">${user.userName}</span>
                        </a>


                        </a>
                        <!--                         Dropdown - User Information 
                                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                                     aria-labelledby="userDropdown">
                                                                                <a class="dropdown-item" href="#">
                        =======
                        <!-- Nav Item - User Information 
                        <li class="nav-item dropdown no-arrow  h-100">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="btn btn-primary h-50" style="width: 100px;">${user.userName}</span>


                        <%--<c:if test="${user.userRole == 1}">Admin</c:if>--%>
                        <%--<c:if test="${user.userRole == 2}">Manager</c:if>--%>
                        <%--<c:if test="${user.userRole == 3}">Staff</c:if>--%>
                        <div class="d-flex justify-content-center">
                            <small class="">Admin</small>
                        </div>
                    </a>-->

                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <!--                            <a class="dropdown-item" href="#">
>>>>>>> 8adada0e4acd1f1a25b890d13401cf9bccb44119
                                                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                                            Profile
                                                        </a>-->
                            <!--<div class="dropdown-divider"></div>-->
                            <a class="dropdown-item"
                               href='<c:url value="/DispatchServlet?btAction=Logout"/>'>
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>


            </nav>
            <!-- End of Topbar -->

            </nav>

            <!-- End of Topbar -->


