<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Leaderboard</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
        <link href="FE/css/leaderboard.css" rel="stylesheet">
    </head>

    <body>
        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">


                    <a href="postlogin.html" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
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
                                <a href="FE/postlogin.html" class="nav-item nav-link">Home</a>
                                <a href="FE/leaderboard.jsp" class="nav-item nav-link active">Bảng xếp hạng</a>
                                <a href="FE/schedule.html" class="nav-item nav-link">Lịch thi đấu</a>
                                <a href="FE/memberShip.html" class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="FE/news.html" class="dropdown-item">News</a>
                                        <a href="FE/rules.html" class="dropdown-item">Luật thi đấu</a>
                                        <a href="FE/feedback.html" class="dropdown-item">Feedback</a>
                                    </div>
                                </div>
                                <a href="FE/contact.html" class="nav-item nav-link">Liên Hệ</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Quản lý</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="FE/updateRule.html" class="dropdown-item">Luật thi đấu</a>
                                        <a href="" class="dropdown-item">Lịch thi đấu</a>
                                        <a href="FE/matchResult.html" class="dropdown-item">Kết quả trận đấu</a>
                                    </div>
                                </div>
                            </div>
                            <a href="/UserProfile/userprofile.html" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">emhuythichchoichim</a>
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
                    <h1 class="display-2 text-uppercase text-white mb-md-4">Bảng xếp hạng</h1>
                    <a href="#board" class="btn btn-light py-md-3 px-md-5">Xem bảng xếp hạng</a>
                    <a href="#p-board" class="btn btn-light py-md-3 px-md-5">Xem xếp hạng chim của bạn</a>

                </div>
            </div>
        </div>
        <!-- Hero End -->

        
        <form action="DispatchServlet" class="d-flex justify-content-center">
            <button type="submit" value="LeaderBoard" name="btAction">Load</button> 
        </form>
         
        <c:set var="leaderboard" value="${requestScope.LEADER_BOARD}" />
        
        <!-- Top Bird Start -->
        <div class="container-fluid p-5">
            <div class="mb-5 text-center">
                <h5 class="text-primary text-uppercase">Top 3 chim có điểm cao nhất</h5>
                <h1 class="display-3 text-uppercase mb-0">Top Chim</h1>
            </div>
                   
                     
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <div class="team-item position-relative">
                        <div class="position-relative overflow-hidden rounded">
                            <img class="img-fluid w-100" src="FE/img/daddyHuy.jpg" alt="">
                            <div class="team-overlay">
                                <div class="align-items-center justify-content-start">
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: ${leaderboard[1].point}</h6>
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[1].calWinRate()}%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(173, 181, 189, .9);">
                            <h5 class="text-uppercase text-light">${leaderboard[1].birdName}</h5>
                            <p class="text-uppercase text-white m-0">Top 2</p>
                            <p class="text-uppercase text-white m-0">Trainner: Huy Ln</p>


                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item position-relative">
                        <div class="position-relative overflow-hidden rounded">
                            <img class="img-fluid w-100" src="FE/img/thuanDam.jpg" alt="">
                            <div class="team-overlay">
                                <div class="align-items-center justify-content-start">
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: ${leaderboard[0].point}</h6>
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[0].calWinRate()}%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(255, 218, 101, .9);">
                            <h5 class="text-uppercase text-light">${leaderboard[0].birdName}</h5>
                            <p class="text-uppercase text-white m-0">Top 1</p>
                            <p class="text-uppercase text-white m-0">Trainner: ThuanThien</p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item position-relative">
                        <div class="position-relative overflow-hidden rounded">
                            <img class="img-fluid w-100" src="FE/img/eDanh.jpg" alt="">
                            <div class="team-overlay">
                                <div class="align-items-center justify-content-start">
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: ${leaderboard[2].point}</h6>
                                    
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[2].calWinRate()}%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(201, 147, 85, .9);">
                            <h5 class="text-uppercase text-light">${leaderboard[2].birdName}</h5>
                            <p class="text-uppercase text-white m-0">Top 3</p>
                            <p class="text-uppercase text-white m-0">Trainner: Danh Tran</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bird End -->

        <!-- Leaderboard start -->


        <div class='container' tabindex='1'>
            <div class='search-container' tabindex='1'>
                <input placeholder='Tìm kiếm' type='text'>
                <a class='button'>
                    <i class='fa fa-search'></i>
                </a>
            </div>
        </div>


    
        
        <%--<c:if test="${not empty leaderboard}">--%>
            <div class="wrapper" id="board">
                <div class="list">
                    <div class="list__header">
                        <h1>Bảng xếp hạng</h1>
                    </div>
                    <div class="list__body">
                        <table class="list__table">
                            <tbody>
                                <!-- Loop -->
                                <c:forEach items="${leaderboard}" var="dto" varStatus="counter">
                                    <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win= ${dto.win} data-lose= ${dto.lose} data-tie= ${dto.tie} data-match= "100">
                                        <td class="list__cell">
                                            <span class="list__value"> ${counter.count}</span>
                                        </td>
                                        <td class="list__cell">
                                            <span class="list__value"> ${dto.birdName} </span>
                                            <small class="list__label">Chim</small>
                                        </td>
                                        <td class="list__cell">
                                            <span class="list__value">...</span>
                                            <small class="list__label">Trainer</small>
                                        </td>
                                        <td class="list__cell">
                                            <span class="list__value"> ${dto.point} </span>
                                            <small class="list__label">Điểm</small>
                                        </td>
                                    </tr>
                                    <!-- row -->
                                    <!-- End of loop -->
                                </c:forEach>
                            </tbody>
                        </table>

                        <button class="view-more_bt">Xem thêm</button>
                    </div>
                </div>
                <div class="overlay"></div>
            <%--</c:if>--%>
            <c:if test="${empty leaderboard}">
                <div class="d-flex justify-content-center">
                    <h2>
                        Chưa có bảng xếp hạng!!!
                    </h2> 
                </div>

            </c:if>
        </div>
        
        <div class="sidebar">
            <div class="sidebar__header">
                <div class="sidebar__title">Thông tin chim</div>
                <button class="button button--close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <circle cx="12" cy="12" r="10" />
                    <line x1="15" y1="9" x2="9" y2="15" />
                    <line x1="9" y1="9" x2="15" y2="15" />
                    </svg>
                </button>
            </div>
            <div class="sidebar__body">
            </div>
        </div>


        <!-- Leaderboard end -->

        <!-- Personal Leaderboard start -->
        <div class="wrapper" id="p-board">
            <div class="list">
                <div class="list__header">
                    <h1>Xếp hạng chim của bạn</h1>
                </div>
                <div class="list__body">
                    <table class="list__table">
                        <tbody>
                            <!-- Loop -->
                            <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win="167" data-lose="45" data-tie="6">
                                <td class="list__cell">
                                    <span class="list__value">1</span>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">SiêuChim</span>
                                    <small class="list__label">Chim</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">56</span>
                                    <small class="list__label">Hạng</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">1699</span>
                                    <small class="list__label">Điểm</small>
                                </td>
                            </tr>
                            <!-- row -->
                            <tr class="list__row" data-image="FE/img/hinh-anh-chim-chao-mao.jpg" data-win="146" data-lose="56" data-tie="3">
                                <td class="list__cell">
                                    <span class="list__value">2</span>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">Cậu hai</span>
                                    <small class="list__label">Chim</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">85</span>
                                    <small class="list__label">Hạng</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">1546</span>
                                    <small class="list__label">Điểm</small>
                                </td>
                            </tr>
                            <!-- row -->
                            <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win="143" data-lose="60" data-tie="5">
                                <td class="list__cell">
                                    <span class="list__value">3</span>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">Rakan</span>
                                    <small class="list__label">Chim</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">1550</span>
                                    <small class="list__label">Hạng</small>
                                </td>
                                <td class="list__cell">
                                    <span class="list__value">1172</span>
                                    <small class="list__label">Điểm</small>
                                </td>
                            </tr>
                            <!-- row -->
                            <!-- End of loop -->
                        </tbody>
                    </table>
                    <!-- <button class="view-more_bt">Xem thêm</button> -->
                </div>
            </div>
            <div class="overlay"></div>
        </div>
        <div class="sidebar">
            <div class="sidebar__header">
                <div class="sidebar__title">Thông tin chim</div>
                <button class="button button--close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <circle cx="12" cy="12" r="10" />
                    <line x1="15" y1="9" x2="9" y2="15" />
                    <line x1="9" y1="9" x2="15" y2="15" />
                    </svg>
                </button>
            </div>
            <div class="sidebar__body">
            </div>
        </div>
        <!-- Personal Leaderboard end -->
       

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
        <script src="FE/js/leaderboard.js"></script>
        
    </body>

</html>
