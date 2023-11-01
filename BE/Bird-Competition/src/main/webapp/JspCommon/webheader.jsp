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
                        <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' class="nav-item nav-link active">Home</a>
                        <a href='<c:url value="/DispatchServlet?btAction=LeaderBoard"/>' class="nav-item nav-link">Bảng xếp hạng</a>
                        <a href='<c:url value="/DispatchServlet?btAction=schedule"/>' class="nav-item nav-link">Lịch thi đấu</a>
                        <a href="FE/memberShip.html" class="nav-item nav-link">Hội viên</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                <a href="FE/rules.html" class="dropdown-item">Luật thi đấu</a>
                                <a href="FE/feedback.html" class="dropdown-item">Feedback</a>
                                <a href="FE/news.html" class="dropdown-item">Tin Tức</a>
                            </div>
                        </div>
                        <a href="FE/contact.html" class="nav-item nav-link">Liên Hệ</a>
                    </div>
                    <div class="nav-item dropdown">

                        <a href="#" class="btn btn-primary nav-link dropdown-toggle" data-bs-toggle="dropdown" style="width: 150px;">${sessionScope.USER.userName}</a>
                        <div class="dropdown-menu rounded-0 m-0">

                            <form action="DispatchServlet" method="POST">
                                
                                <button class="dropdown-item" name="btAction" value="UserProfile">Trang cá nhân</button>
                                <a class="dropdown-item" href="birdprofile.html">Bộ sưu tập</a>
                                <a class="dropdown-item" href="addnewbird.jsp">Thêm chim</a>
                                <button class="dropdown-item" name="btAction" value="MatchHistory">Lịch sử đấu</button>
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