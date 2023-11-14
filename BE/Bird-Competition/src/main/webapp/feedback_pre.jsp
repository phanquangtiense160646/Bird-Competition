<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<head>

    <title>Feedback</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="FE/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="FE/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="FE/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- Header Start -->
    <div class="container-fluid bg-dark px-0">
        <div class="row gx-0">
            <div class="col-lg-3 bg-dark d-none d-lg-block">


                <a href="#" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
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
                            <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link">Home</a>
                            <a href='<c:url value="/DispatchServlet?btAction=Home"/>'class="nav-item nav-link">Bảng xếp hạng</a>
                            <a href='<c:url value="/DispatchServlet?btAction=Home"/>'class="nav-item nav-link">Lịch Thi Đấu</a>
                            <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link">Hội viên</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="News_pre.jsp" class="dropdown-item">Tin Tức</a>
                                    <a href="rule_pre.jsp" class="dropdown-item">Luật thi đấu</a>
                                    <a href="#" class="dropdown-item active">Feedback</a>
                                </div>
                            </div>
                            <a href="contact_pre.jsp" class="nav-item nav-link">Liên Hệ</a>

                        </div>
                        <a href="Login2.jsp" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">Login/Signup</a>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- Hero Start -->
    <div class="container-fluid bg-primary p-5 bg-hero mb-5">
        <div class="row py-5">
            <div class="col-12 text-center">
                <h1 class="display-2 text-uppercase text-white mb-md-4">Feedback</h1>
                <a href="index.jsp" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                <a href="#feedback" class="btn btn-light py-md-3 px-md-5">Gửi Feedback</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Testimonial Start -->
    <div class="container-fluid p-0" style="margin: 90px 0;">
        <div class="row g-0">
            <div class="col-lg-6" style="min-height: 500px;">
                <div class="position-relative h-100">
                    <img class="position-absolute w-100 h-100" src="FE/img/bird_player.png" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 bg-dark p-5">
                <div class="mb-5">
                    <h5 class="text-primary text-uppercase">Đánh giá</h5>
                    <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                </div>
                <c:set var="feedback" value="${requestScope.FEEDBACK}" /> 
                <c:set var="size" value="${10}" />

                <c:if test="${feedback.size() <= size}">
                    <c:set var="size" value="${feedback.size()}" />
                </c:if>
                <div class="owl-carousel testimonial-carousel">
                    <c:if test="${not empty feedback}">
                        <c:forEach var="i" begin="0" end="${size -1 }" step="1">

                            <div class="testimonial-item">
                                <p class="fs-4 fw-normal text-light mb-4"><i 
                                        class="fa fa-quote-left text-primary me-3"></i>${feedback.get(i).getDescription()}</p>
                                <div class="d-flex align-items-center">

                                    <div class="ps-4">
                                        <h5 class="text-uppercase text-light">${feedback.get(i).getIdMember()}</h5>
                                        <span class="text-uppercase text-secondary">Trainer</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

    <!-- Give Feedback start -->
    <div class="row g-0, d-flex justify-content-center" id="feedback">
        <div class="col-lg-6">
            <div class="bg-dark p-5">
                <form>
                    <div class="row g-3">

                        <a href="Login2.jsp" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">Đăng Nhập
                            Để Gửi Feedback
                        </a>
                    </div>
            </div>
            </form>
        </div>
    </div>
    <!-- <div class="col-lg-6">
        <iframe class="w-100"
            src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=FPT University HCMC&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
            frameborder="0" style="height: 457px; border:0;" allowfullscreen="" aria-hidden="false"
            tabindex="0"></iframe>
    </div> -->
</div>
<!-- Give Feedback end -->

<!-- Footer Start -->
<div class="container-fluid bg-dark text-secondary px-5 mt-5">
    <div class="row gx-5">
        <div class="col-lg-12 col-md-12">
            <div class="row gx-5">
                <div class="col-lg-4 col-md-12 pt-5 mb-5">
                    <h4 class="text-uppercase text-light mb-4">Get In Touch</h4>
                    <div class="d-flex mb-2">
                        <i class="bi bi-geo-alt text-primary me-2"></i>
                        <p class="mb-0">FPT University, Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành
                            Phố Thủ Đức, Thành phố Hồ Chí Minh</p>
                    </div>
                    <div class="d-flex mb-2">
                        <i class="bi bi-envelope-open text-primary me-2"></i>
                        <p class="mb-0">birdfight@compe.com</p>
                    </div>
                    <div class="d-flex mb-2">
                        <i class="bi bi-telephone text-primary me-2"></i>
                        <p class="mb-0">+123 321 333</p>
                    </div>
                    <div class="d-flex mt-4">
                        <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i
                                class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i
                                class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i
                                class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-square rounded-circle" href="#"><i
                                class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                    <h4 class="text-uppercase text-light mb-4">Quick Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Bảng Xếp Hạng</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Lịch Thi Đấu</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Hội Viên</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Luật Thi Đấu</a>
                        <a class="text-secondary" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Liên Hệ</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                    <h4 class="text-uppercase text-light mb-4">Popular Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Bảng Xếp Hạng</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Lịch Thi Đấu</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Feedback</a>
                        <a class="text-secondary mb-2" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Tin Tức</a>
                        <a class="text-secondary" href="#"><i
                                class="bi bi-arrow-right text-primary me-2"></i>Liên Hệ</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid py-4 py-lg-0 px-5" style="background: #111111;">
    <div class="row gx-5">
        <div class="col-lg-12">
            <div class="py-lg-4 text-center">
                <p class="text-secondary mb-0">&copy; <a class="text-light fw-bold"
                                                         href="#">BIRDFIGHTER</a>. All Rights Reserved.</p>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-dark py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="FE/lib/easing/easing.min.js"></script>
<script src="FE/lib/waypoints/waypoints.min.js"></script>
<script src="FE/lib/counterup/counterup.min.js"></script>
<script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="FE/js/main.js"></script>
</body>

</html>