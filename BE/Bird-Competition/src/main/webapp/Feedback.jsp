<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<head>
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
    <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

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
            
                
            <a href="postlogin.html" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                <img src="img/finallogo.png" style="width: 100px; margin-right: -40px; margin-bottom:50px;">
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
                        <a href="postlogin.html" class="nav-item nav-link">Home</a>
                        <a href="leaderboard.html" class="nav-item nav-link">Bảng xếp hạng</a>
                        <a href="schedule.html" class="nav-item nav-link">Lịch thi đấu</a>
                        <a href="memberShip.html" class="nav-item nav-link">Hội viên</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="news.html" class="dropdown-item">News</a>
                                <a href="rules.html" class="dropdown-item">Luật thi đấu</a>
                                <a href="Feedback.jsp" class="dropdown-item active">Feedback</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Liên Hệ</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Quản lý</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="updateRule.html" class="dropdown-item">Luật thi đấu</a>
                                <a href="" class="dropdown-item">Lịch thi đấu</a>
                                <a href="matchResult.html" class="dropdown-item">Kết quả trận đấu</a>
                            </div>
                        </div>
                    </div>
                    <div class="nav-item dropdown">

                        <a href="#" class="btn btn-primary nav-link dropdown-toggle" data-bs-toggle="dropdown" style="width: 150px;">${sessionScope.USER.userName}</a>
                        <div class="dropdown-menu rounded-0 m-0">

                            <form action="DispatchServlet" method="POST">
                                <a class="dropdown-item" href="userprofile.jsp">User Profile</a>
                                <a class="dropdown-item" href="birdprofile.html">Bird Profile</a>
                                <a class="dropdown-item" href="addnewbird.jsp">Add Bird</a>
                                <button class="dropdown-item" name="btAction" value="MatchHistory">Match History</button>
                                <button class="dropdown-item" name="btAction" value="PaymentHistory">Payment History</button>
                                <div class="dropdown-divider"></div>
                                <button class="dropdown-item" name="btAction" value="Logout">Logout</button>
                            </form>

                        </div>
                    </div>
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
                <a href="postlogin.html" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
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
                    <img class="position-absolute w-100 h-100" src="img/bird_player.png" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 bg-dark p-5">
                <div class="mb-5">
                    <h5 class="text-primary text-uppercase">Đánh giá</h5>
                    <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item">
                        <p class="fs-4 fw-normal text-light mb-4"><i class="fa fa-quote-left text-primary me-3"></i>Tạo được một sân chơi rất hay và bổ ích.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid rounded-circle" src="img/daddyHuy.jpg" alt="">
                            <div class="ps-4">
                                <h5 class="text-uppercase text-light">emhuythichchoichim</h5>
                                <span class="text-uppercase text-secondary">Trainer</span>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <p class="fs-4 fw-normal text-light mb-4"><i class="fa fa-quote-left text-primary me-3"></i>Chuyên nghiệp tạo nên uy tín.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid rounded-circle" src="img/danhtran.jpg" alt="">
                            <div class="ps-4">
                                <h5 class="text-uppercase text-light">Danh Trần</h5>
                                <span class="text-uppercase text-secondary">Trainer</span>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <p class="fs-4 fw-normal text-light mb-4"><i class="fa fa-quote-left text-primary me-3"></i>Sẽ có thể tiếp tục tham gia vào giải sắp tới.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid rounded-circle" src="img/thuanDam.jpg" alt="">
                            <div class="ps-4">
                                <h5 class="text-uppercase text-light">Thuận Thiên</h5>
                                <span class="text-uppercase text-secondary">Trainer</span>
                            </div>
                        </div>
                    </div>
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
                        <div class="col-6">
                            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Tên của bạn" style="height: 55px;">
                        </div>
                        <div class="col-6">
                            <input type="email" class="form-control bg-light border-0 px-4" placeholder="Email" style="height: 55px;">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Tiêu đề" style="height: 55px;">
                        </div>
                        <div class="col-12">
                            <textarea class="form-control bg-light border-0 px-4 py-3" rows="4" placeholder="Nội dung"></textarea>
                        </div>
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="submit">Gửi Feedback</button>
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
            <div class="col-lg-8 col-md-6">
                <div class="row gx-5">
                    <div class="col-lg-4 col-md-12 pt-5 mb-5">
                        <h4 class="text-uppercase text-light mb-4">Get In Touch</h4>
                        <div class="d-flex mb-2">
                            <i class="bi bi-geo-alt text-primary me-2"></i>
                            <p class="mb-0">FPT University, Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh</p>
                        </div>
                        <div class="d-flex mb-2">
                            <i class="bi bi-envelope-open text-primary me-2"></i>
                            <p class="mb-0">info@example.com</p>
                        </div>
                        <div class="d-flex mb-2">
                            <i class="bi bi-telephone text-primary me-2"></i>
                            <p class="mb-0">+012 345 67890</p>
                        </div>
                        <div class="d-flex mt-4">
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-uppercase text-light mb-4">Quick Links</h4>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Class Schedule</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Our Trainers</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-secondary" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-uppercase text-light mb-4">Popular Links</h4>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Class Schedule</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Our Trainers</a>
                            <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-secondary" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-5">
                    <h4 class="text-uppercase text-white mb-4">Newsletter</h4>
                    <h6 class="text-uppercase text-white">Subscribe Our Newsletter</h6>
                    <p class="text-light">Amet justo diam dolor rebum lorem sit stet sea justo kasd</p>
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                            <button class="btn btn-dark">Sign Up</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid py-4 py-lg-0 px-5" style="background: #111111;">
        <div class="row gx-5">
            <div class="col-lg-8">
                <div class="py-lg-4 text-center">
                    <p class="text-secondary mb-0">&copy; <a class="text-light fw-bold" href="#">Your Site Name</a>. All Rights Reserved.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="py-lg-4 text-center credit">
                    <p class="text-light mb-0">Designed by <a class="text-light fw-bold" href="https://htmlcodex.com">HTML Codex</a></p>
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