<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header Start -->
<div class="container-fluid bg-dark px-0">
    <div class="row gx-0">
        <div class="col-lg-3 bg-dark d-none d-lg-block">


            <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                <img src="FE/img/finallogo.png" style="width: 100px; margin-right: -40px; margin-bottom:50px;">
                <h1 class="m-0 display-4 text-primary text-uppercase">BIRDFIGHTER</h1>
            </a>



        </div>
        <div class="col-lg-9">
            <div class="row gx-0 bg-secondary d-none d-lg-flex">
                <div class="col-lg-7 px-5 text-start">
                    <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                        <i class="fa fa-envelope text-primary me-2"></i>
                        <h6 class="mb-0">birdfight@compe.com</h6>
                    </div>
                    <div class="h-100 d-inline-flex align-items-center py-2">
                        <i class="fa fa-phone-alt text-primary me-2"></i>
                        <h6 class="mb-0">+123 321 333</h6>
                    </div>
                </div>
                <div class="col-lg-5 px-5 text-end">
                    <div class="d-inline-flex align-items-center py-2">
                        <a class="btn btn-light btn-square rounded-circle me-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="btn btn-light btn-square rounded-circle me-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="btn btn-light btn-square rounded-circle me-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="btn btn-light btn-square rounded-circle me-2" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="btn btn-light btn-square rounded-circle" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0 px-lg-5">

                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' id="home_page" class="nav-item nav-link">Home</a>
                        <a href='<c:url value="/DispatchServlet?btAction=LeaderBoard"/>' id="bangxephang" class="nav-item nav-link">Bảng xếp hạng</a>
                        <a href='<c:url value="/DispatchServlet?btAction=schedule"/>' id="lichthidau" class="nav-item nav-link">Lịch thi đấu</a>
                        <a href='<c:url value="/DispatchServlet?btAction=Membership"/>' id="mbship" class="nav-item nav-link">Hội viên</a>
                        <div class="nav-item dropdown">
                            <a href="#" id="cactrangdropdown" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                <a href='<c:url value="rule.jsp"/>'class="dropdown-item">Luật thi đấu</a>
<!--                                <a href='<c:url value="/DispatchServlet?btAction=FeedBack"/>' class="dropdown-item">Feedback</a>-->
                                <a href='<c:url value="/DispatchServlet?btAction=Blog"/>' class="dropdown-item">Tin Tức</a>
                            </div>
                        </div>
                        <a href='<c:url value="contact.jsp"/>' class="nav-item nav-link">Liên Hệ</a>
                    </div>
                    <div class="nav-item dropdown d-inline-flex">
                        <c:set var="user" value="${sessionScope.USER}"/>
                        <c:if test="${user.getVipType() eq '1'}" >
                            <p class="btn p-0 h-75" style="width: 70px; font-size: small; background-color: #ff9539; color: black; margin-right:5px">Bronze Member</p>
                            <a href="#" class="btn btn-primary nav-link dropdown-toggle h-75" data-bs-toggle="dropdown" style="width: 150px;">${user.userName} </a>
                        </c:if>
                        <c:if test="${user.getVipType() eq '2'}" >
                            <p class="btn p-0 h-75 ml-2" style="width: 70px; font-size: small; background-color: #686a6f; color: black; margin-right:5px">Silver Member</p>
                            <a href="#" class="btn btn-primary nav-link dropdown-toggle h-75" data-bs-toggle="dropdown" style="width: 150px;">${user.userName}
                            </a>

                        </c:if>
                        <c:if test="${user.getVipType() eq '3'}" >
                            <p class="btn p-0 h-75 ml-2" style="width: 70px; font-size: small; background-color: #686a6f; color: black; margin-right:5px">Gold Member</p>
                            <a href="#" class="btn btn-primary nav-link dropdown-toggle h-75" data-bs-toggle="dropdown" style="width: 150px;">${user.userName}</a>

                        </c:if>
                        <c:if test="${user.vipType == null}" >
                            <a href="#" class="btn btn-primary nav-link dropdown-toggle h-75" data-bs-toggle="dropdown" style="width: 150px;">${user.userName}</a>
                        </c:if>
                        <div class="dropdown-menu rounded-0 m-0">

                            <form action="DispatchServlet" method="POST">

                                <button class="dropdown-item" name="btAction" value="UserProfile">Trang cá nhân</button>
                                <button class="dropdown-item" name="btAction" value="ShowAllBirds">Bộ Sưu Tập</button>
                                <a class="dropdown-item" href="addnewbird.jsp">Thêm chim</a>
                                <button class="dropdown-item" name="btAction" value="MatchHistory">Trận của tôi</button>
                                <button class="dropdown-item" name="btAction" value="PaymentHistory">Lịch sử giao dịch</button>
                                <div class="dropdown-divider"></div>
                                <button class="dropdown-item" name="btAction" value="Logout">Đăng xuất</button>
                            </form>

                        </div>
                    </div>

                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Header End -->