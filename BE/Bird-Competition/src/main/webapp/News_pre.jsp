
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News</title>
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
    </head>

    <body>
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
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>'class="nav-item nav-link">Home</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link">Lịch thi đấu</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" id="cactrangdropdown" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">

                                        <a href= "rule_pre.jsp"class="dropdown-item">Luật thi đấu</a>
                                        <a href= "feedback_pre.jsp"class="dropdown-item">Feedback</a>
                                        <a href= "#"class="dropdown-item">Tin Tức</a>
                                    </div>
                                </div>
                                <a href="contact_pre.jsp" class="nav-item nav-link">Liên Hệ</a>
                            </div>
                            <a href="login" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">Login/Signup</a>

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
                    <h1 class="display-2 text-uppercase text-white mb-md-4">Blog Grid</h1>
<!--                    <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                    <a href='#' class="btn btn-light py-md-3 px-md-5">Blog</a>-->
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Blog Start -->
        <div class="col-lg-12">
            <div class="row g-5">
                <!-- Blog list Start -->
                <div class="col-lg-8">
                    <div class="row g-5">
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid"style="width: 600px; height: 400px; object-fit: cover;" src="https://bbt.1cdn.vn/2023/10/30/202310301140531.jpeg" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="https://baobinhthuan.com.vn/hoi-thi-chim-chao-mao-chao-mung-le-hoi-van-hoa-du-lich-dinh-thay-thim-114280.html">
                                        <p class="text-light text-uppercase mb-0">Hội Thi Chim Chào Mào MỪng Lễ Hội Văn Hóa - Du Lịch Dinh Thầy Thím</p>
                                    </a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="https://quanba.hagiang.gov.vn/documents/44741/0/%E1%BA%A2nh+2.+H%E1%BB%99i+thi+chim+ch%C3%A0o+m%C3%A0o+%C4%91%E1%BA%A5u%2C+h%C3%B3t.png/89433a1f-c975-c7de-1b30-e49ffe9309af?t=1677466952884
" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="https://quanba.hagiang.gov.vn/chi-tiet-tin-tuc/-/news/44741/quan-ba-hoi-thi-chim-chao-mao-dau-hot-lan-thu-nhat-nam-2023.html">
                                        <p class="text-light text-uppercase mb-0"> Quản Bạ: Hội thi chim chào mào đấu hót lần thứ nhất năm 2023.</p>
                                    </a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="https://www.baokiengiang.vn/uploads/image/2023/10/09/KGO%20-%20%E1%BA%A3nh%201-.jpg" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="https://www.baokiengiang.vn/le-hoi/hoi-thi-chim-hot-nghe-thuat-mo-rong-nam-2023-17028.html">
                                        <p class="text-light text-uppercase mb-0">Hội thi chim hót nghệ thuật mở rộng năm 2023</p> </a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="https://baobinhdinh.vn/viewimage.aspx?imgid=256485" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="https://baobinhdinh.vn/viewer.aspx?macm=18&macmp=18&mabb=263604">
                                        <p class="text-light text-uppercase mb-0">Sôi nổi Hội thi chim chào mào hót</p>
                                    </a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="https://haiphong.gov.vn/upload/haiphong/product/2023/5/e745fc8013c0cd9e94d19-b01f3211820b45b4b954bac2e79b92b9.jpg?maxwidth=2048" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="https://haiphong.gov.vn/tin-tuc-su-kien/Hoi-thi-chim-Chao-Mao-dau-hot-lien-tinh-lan-thu-VI-nam-2023-thu-hut-dong-dao-cac-nghe-nhan-choi-chim-canh-118467.html">
                                        <p class="text-light text-uppercase mb-0">Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023 thu hút đông đảo các nghệ nhân chơi chim cảnh</p> </a>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-item">
                                <div class="position-relative overflow-hidden rounded-top">
                                    <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="http://media.anhp.vn:8081/files/2023/050317%20(1).jpg" alt="">
                                </div>
                                <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                    <a href="http://anhp.vn/hoi-thi-chim-chao-mao-dau-hot-lien-tinh-lan-thu-vi-nam-2023-d53381.html">
                                        <p class="text-light text-uppercase mb-0">Hội thi chim Chào Mào đấu hót liên tỉnh lần thứ VI năm 2023</p> </a>

                                </div>
                            </div>
                        </div>
                       
                       


                    </div>
                </div>
                <!-- Blog list End -->
                <!-- Sidebar Start -->
                <div class="col-lg-4">
                    <!-- Search Form Start -->
                    <!--            <div class="mb-5">
                                    <div class="input-group">
                                        <input type="text" class="form-control p-3" placeholder="Keyword">
                                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                                    </div>
                                </div>-->
                    <!-- Search Form End -->

                    <!-- Category Start -->
                    <div class="mb-5">
                        <h3 class="text-uppercase mb-4">Thể Loại</h3>
                        <div class="d-flex flex-column justify-content-start bg-dark rounded p-4">
                            <a class="fs-5 fw-bold text-light text-uppercase mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Chim Chào Mào</a>
                            <a class="fs-5 fw-bold text-light text-uppercase mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Thi Hót</a>
                            <a class="fs-5 fw-bold text-light text-uppercase mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Thi Bề Ngoài</a>
                            <!-- <a class="fs-5 fw-bold text-light text-uppercase mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Keyword Research</a>
                            <a class="fs-5 fw-bold text-light text-uppercase" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Email Marketing</a> -->
                        </div>
                    </div>
                    <!-- Category End -->

                    <!-- Recent Post Start -->
                    <!--             <div class="mb-5">
                                    <h3 class="text-uppercase mb-4">Recent Post</h3>
                                    <div class="bg-dark rounded p-4">
                                        <div class="d-flex overflow-hidden mb-3">
                                            <img class="img-fluid flex-shrink-0 rounded-start" src="img/blog-1.jpg" style="width: 75px;" alt="">
                                            <a href="" class="d-flex align-items-center bg-light rounded-end h5 text-uppercase p-3 mb-0">Sed amet tempor amet sit kasd sea lorem
                                            </a>
                                        </div>
                                        <div class="d-flex overflow-hidden mb-3">
                                            <img class="img-fluid flex-shrink-0 rounded-start" src="img/blog-2.jpg" style="width: 75px;" alt="">
                                            <a href="" class="d-flex align-items-center bg-light rounded-end h5 text-uppercase p-3 mb-0">Sed amet tempor amet sit kasd sea lorem
                                            </a>
                                        </div>
                                        <div class="d-flex overflow-hidden mb-3">
                                            <img class="img-fluid flex-shrink-0 rounded-start" src="img/blog-3.jpg" style="width: 75px;" alt="">
                                            <a href="" class="d-flex align-items-center bg-light rounded-end h5 text-uppercase p-3 mb-0">Sed amet tempor amet sit kasd sea lorem
                                            </a>
                                        </div>
                                        <div class="d-flex overflow-hidden mb-3">
                                            <img class="img-fluid flex-shrink-0 rounded-start" src="img/blog-1.jpg" style="width: 75px;" alt="">
                                            <a href="" class="d-flex align-items-center bg-light rounded-end h5 text-uppercase p-3 mb-0">Sed amet tempor amet sit kasd sea lorem
                                            </a>
                                        </div>
                                        <div class="d-flex overflow-hidden">
                                            <img class="img-fluid flex-shrink-0 rounded-start" src="img/blog-2.jpg" style="width: 75px;" alt="">
                                            <a href="" class="d-flex align-items-center bg-light rounded-end h5 text-uppercase p-3 mb-0">Sed amet tempor amet sit kasd sea lorem
                                            </a>
                                        </div>
                                    </div>
                                </div> -->
                    <!-- Recent Post End -->

                    <!-- Tags Start -->
                    <div class="mb-5">
                        <h3 class="text-uppercase mb-4">Tag Cloud</h3>
                        <div class="d-flex flex-wrap m-n1">
                            <a href="" class="btn btn-dark m-1">Thiết Kế</a>
                            <a href="" class="btn btn-dark m-1">Hội Chim</a>
                            <a href="" class="btn btn-dark m-1">Marketing</a>
                            <a href="" class="btn btn-dark m-1">CEO</a>

                        </div>
                    </div>
                    <!-- Tags End -->

                    <!-- Plain Text Start -->
                    <div>
                        <h3 class="text-uppercase mb-4">Đăng Ký VIP</h3>
                        <div class="bg-dark rounded text-center text-light" style="padding: 30px;">
                            <p>Trở thành hội viên VIP có nhiều đặc quyền riêng và có giá ưu đãi dành cho gói tháng.</p>
<!--                            <a href='<c:url value=""/>' class="btn btn-primary py-2 px-4">Xem Thêm</a>-->
                        </div>
                    </div>
                    <!-- Plain Text End -->
                </div>
                <!-- Sidebar End -->
            </div>
        </div>
        <!-- Blog End -->


        <!-- Footer Start -->
        <jsp:include page="JspCommon/webfooter.jsp"/>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-dark py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>