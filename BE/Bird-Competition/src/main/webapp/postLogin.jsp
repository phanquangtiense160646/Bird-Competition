<%-- Document : postLogin Created on : Oct 22, 2023, 2:11:47 PM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Home</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">


        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
              rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet">
        <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/style.css" rel="stylesheet">

        <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>

    </head>

    <body>
        <!-- Header Start -->
        <jsp:include page="JspCommon/webheader.jsp"/>
        <!-- Header End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="FE/img/defaultpic.jpg" alt="Image">
                        <div
                            class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase">BIRD COMPETITION PLATFORM</h5>
                                <h1 class="display-2 text-white text-uppercase mb-md-4">Best Place To Show Us
                                    Your Birds </h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Join Us</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5">Contact Us</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="FE/img/chaomao-bg (2).jpg" alt="Image">
                        <div
                            class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase">BIRD COMPETITION PLATFORM</h5>
                                <h1 class="display-2 text-white text-uppercase mb-md-4">Best Place To Show Us
                                    Your Birds</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Join Us</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->


        <!-- About Start -->
        <div class="container-fluid p-5">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="FE/img/chaomao-bg (1).jpg"
                             style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="text-primary text-uppercase">About Us</h5>
                        <h1 class="display-3 text-uppercase mb-0">Welcome to Birdfighter</h1>
                    </div>
                    <h4 class="text-body mb-4">BIRDFIGHTER là một trong những platform đầu tiên tổ chức và vận
                        hành nhiều giải đấu dành cho người chơi chim. Cung cấp các dịch vụ như đăng kí tham gia
                        online, bảng xếp hạng cập nhật theo các mùa,....</p>
                        <div class="rounded bg-dark p-5">
                            <ul class="nav nav-pills justify-content-between mb-3">
                                <li class="nav-item w-50">
                                    <a class="nav-link text-uppercase text-center w-100 active"
                                       data-bs-toggle="pill" href="#pills-1">About Us</a>
                                </li>
                                <li class="nav-item w-50">
                                    <a class="nav-link text-uppercase text-center w-100" data-bs-toggle="pill"
                                       href="#pills-2">Why Choose Us</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="pills-1">
                                    <p class="text-secondary mb-0">Chào mừng bạn đến với "BIRDFIGHTER" - nơi
                                        tinh túy của sự cạnh tranh giữa những chú chim tài năng! Trang web của
                                        chúng tôi là điểm hẹn cho những người yêu mến thế giới chim và muốn theo
                                        dõi, tham gia và chia sẻ về các cuộc thi chim hấp dẫn. Tại đây, bạn sẽ
                                        được khám phá các cuộc thi chim độc đáo từ khắp nơi trên thế giới, theo
                                        dõi những màn trình diễn ngoạn mục của các loài chim, và tham gia cùng
                                        cộng đồng đam mê chim. Với thông tin mới nhất về các sự kiện, video,
                                        hình ảnh và bài viết thú vị, chúng tôi hy vọng sẽ giúp bạn nối kết với
                                        cộng đồng chim độc đáo và thú vị này. Hãy tham gia cùng chúng tôi để
                                        khám phá sự đẹp và tài năng của thế giới chim đầy màu sắc!</p>
                                </div>
                                <div class="tab-pane fade" id="pills-2">
                                    <p class="text-secondary mb-0">Chúng tôi cam kết mang đến cho bạn những trải
                                        nghiệm chất lượng và chuyên nghiệp nhất trong việc theo dõi và tham gia
                                        các cuộc thi chim. Chúng tôi đảm bảo cung cấp thông tin và nội dung đáng
                                        tin cậy.</p>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Top Bird Start -->
        <div id="bangxephang" class="container-fluid p-5">
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
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: 2180</h6>
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: 67%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                             style="background: rgba(173, 181, 189, .9);">
                            <h5 class="text-uppercase text-light">Arow</h5>
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
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: 2198</h6>
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: 64%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                             style="background: rgba(255, 218, 101, .9);">
                            <h5 class="text-uppercase text-light">Chào mào chiến</h5>
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
                                    <h6 class="text-uppercase text-light mb-3"> Điểm: 2178</h6>
                                    <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: 55%</h6>
                                </div>
                            </div>
                        </div>
                        <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                             style="background: rgba(201, 147, 85, .9);">
                            <h5 class="text-uppercase text-light">Senu</h5>
                            <p class="text-uppercase text-white m-0">Top 3</p>
                            <p class="text-uppercase text-white m-0">Trainner: Danh Tran</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-6 text-center" style="margin-top: 25px;">
            <a href="leaderboard.jsp#board" class="btn btn-primary py-3 px-5">Xem bảng xếp hạng</a>
        </div>
    </div>
    <!-- Top Bird End -->

    <!-- Schedule Start -->
    <div id="schedule" class="container-fluid p-5">
        <div class="mb-5 text-center">
            <h5 class="text-primary text-uppercase">Lịch thi đấu</h5>
            <h1 class="display-3 text-uppercase mb-0">các trận đấu sắp tới</h1>
        </div>
        <div class="tab-class text-center">
            <ul class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase rounded-pill mb-5">
                <li class="nav-item">
                    <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-0">Đã diễn ra</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-1">Đang diễn ra</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rounded-pill text-white active" data-bs-toggle="pill" href="#tab-2">Sắp diễn ra</a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="tab-0" class="tab-pane fade show p-0">
                    <div class="row g-5">
                        <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                        <c:if test="${not empty scheduleData}">
                            <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                <c:if test="${scheduleDto.statusOfContest == 4}">
                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Hệ số: ${scheduleDto.factor}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Chào mào</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu:</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee} vnđ</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span>
                                            </p>
                                            </br><button class="btn btn-primary btn-viewInfo px-5" style="margin-top: 10px;">Xem thông tin</button>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
                <div id="tab-1" class="tab-pane fade show p-0">
                    <div class="row g-5">
                        <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                        <c:if test="${not empty scheduleData}">
                            <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                <c:if test="${scheduleDto.statusOfContest == 3}">

                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Hệ số: ${scheduleDto.factor}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Chào mào</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu:</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee} vnđ</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span>
                                            </p>
                                            </br><button class="btn btn-primary btn-viewInfo px-5" style="margin-top: 10px;">Xem thông tin</button>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
                <div id="tab-2" class="tab-pane fade show p-0 active">
                    <div class="row g-5">
                        <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                        <c:if test="${not empty scheduleData}">
                            <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                <c:if test="${scheduleDto.statusOfContest == 1}">

                                    <div class="col-lg-3 col-md-4 col-sm-6">
                                        <div class="bg-dark rounded text-center py-5 px-3 btn-register">
                                            <p class="schedule-value text-uppercase text-light mb-3">Hệ số: ${scheduleDto.factor}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Chào mào</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu:</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee} vnđ</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span> 
                                            </p>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${scheduleDto.statusOfContest == 2}">

                                    <div class="col-lg-3 col-md-4 col-sm-6">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Hệ số: ${scheduleDto.factor}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Chào mào</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu:</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee} vnđ</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span> 
                                            </p>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-6 d-flex justify-content-center mt-3">
            <a href='<c:url value="/DispatchServlet?btAction=schedule"/>'
               class="btn btn-primary py-3 px-5">Xem thêm để đăng kí thi đấu</a>
        </div>
    </div>
    <!-- Schedule End -->

    <!-- Membership Start -->
    <div id="member" class="container-fluid programe position-relative px-5 mt-5"
         style="margin-bottom: 180px;">
        <div class="row g-5 gb-5">
            <div class="col-lg-4 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa-solid fa-medal display-1 medal3"></i>
                    <h3 class="text-uppercase my-4">Bronze Member</h3>
                    <p>Gói 1 tháng</p>
                    <a class="text-uppercase" href="memberShip.html#registration">Tham gia ngay<i
                            class="bi bi-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa-solid fa-medal display-1 medal1"></i>
                    <h1 class="text-uppercase my-4">Gold Member</h1>
                    <p>Gói 12 tháng</p>
                    <a class="text-uppercase" href="memberShip.html#registration">Tham gia ngay<i
                            class="bi bi-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="bg-light rounded text-center p-5">
                    <i class="fa-solid fa-medal display-1"></i>
                    <h3 class="text-uppercase my-4">Silver Member</h3>
                    <p>Gói 3 tháng</p>
                    <a class="text-uppercase" href="memberShip.html#registration">Tham gia ngay<i
                            class="bi bi-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-lg-12 col-md-6 text-center">
                <!-- <h1 class="text-uppercase text-light mb-4">30% Discount For This Summer</h1>
                -->
                <a href="memberShip.html" class="btn btn-primary py-3 px-5">Tìm hiểu thêm</a>
            </div>
        </div>
    </div>
    <!-- Membership Start -->

    <!-- News Start -->
    <div id="news" class="container-fluid p-5">
        <div class="mb-5 text-center">
            <h5 class="text-primary text-uppercase">Tin tức</h5>
            <h1 class="display-3 text-uppercase mb-0">Tin tức mới nhất</h1>
        </div>
        <div class="row g-5">
            <div class="col-lg-4">
                <div class="blog-item">
                    <a
                        href="https://baria.baria-vungtau.gov.vn/article/?item=63944904898b51bc1d04e968c0c1ca50">
                        <div class="position-relative overflow-hidden rounded-top">
                            <img class="img-fluid" src="img/Hoithichimmorong01.jpg" alt="">
                        </div>
                        <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                            <div
                                class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                <span>27</span>
                                <h6 class="text-light text-uppercase mb-0">January</h6>
                                <span>2023</span>
                            </div>
                            <a class="h5 text-uppercase text-light" href="">HỘI THI CHIM CHÀO MÀO ĐẤU HÓT
                                TPBR MỞ RỘNG NĂM 2023</h4></a>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-item">
                    <a
                        href="https://baocaobang.vn/hoi-thi-dau-hot-chim-chao-mao-thanh-pho-mo-rong-nam-2023-3161421.html">
                        <div class="position-relative overflow-hidden rounded-top">
                            <img class="img-fluid"
                                 src="img/104155_104154_104153_ntv03550_14381223_16185323_16191723.jpg"
                                 alt="">
                        </div>
                        <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                            <div
                                class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                <span>23</span>
                                <h6 class="text-light text-uppercase mb-0">April</h6>
                                <span>2023</span>
                            </div>
                            <a class="h5 text-uppercase text-light" href="">Hội thi đấu hót chim chào mào
                                Thành phố Cao Bằng mở rộng năm 2023</h4></a>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-item">
                    <a
                        href="https://www.baokiengiang.vn/le-hoi/hoi-thi-chim-hot-nghe-thuat-mo-rong-nam-2023-17028.html">
                        <div class="position-relative overflow-hidden rounded-top">
                            <img class="img-fluid" src="img/KGO - ảnh 3 -.jpg" alt="">
                        </div>
                        <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                            <div
                                class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                <span>09</span>
                                <h6 class="text-light text-uppercase mb-0">October</h6>
                                <span>2023</span>
                            </div>
                            <a class="h5 text-uppercase text-light" href=""> "Hội thi chim hót nghệ thuật mở
                                rộng năm 2023 tại TP. Rạch Giá (Kiên Giang) </h4></a>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- News End -->

    <!-- Feedback start -->
    <div class="container-fluid p-0" style="margin: 90px 0;">
        <div class="row g-0">
            <div class="col-lg-6" style="min-height: 500px;">
                <div class="position-relative h-100">
                    <img class="position-absolute w-100 h-100" src="FE/img/bird_player.png"
                         style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 bg-dark p-5">
                <div class="mb-5">
                    <h5 class="text-primary text-uppercase">Đánh giá</h5>
                    <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item">
                        <p class="fs-4 fw-normal text-light mb-4"><i
                                class="fa fa-quote-left text-primary me-3"></i>Dolores sed duo clita tempor
                            justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna
                            ut et, nonumy et labore et tempor diam tempor erat dolor rebum sit ipsum.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid rounded-circle" src="img/testimonial-1.jpg" alt="">
                            <div class="ps-4">
                                <h5 class="text-uppercase text-light">Client Name</h5>
                                <span class="text-uppercase text-secondary">Profession</span>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <p class="fs-4 fw-normal text-light mb-4"><i
                                class="fa fa-quote-left text-primary me-3"></i>Dolores sed duo clita tempor
                            justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna
                            ut et, nonumy et labore et tempor diam tempor erat dolor rebum sit ipsum.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid rounded-circle" src="img/testimonial-2.jpg" alt="">
                            <div class="ps-4">
                                <h5 class="text-uppercase text-light">Client Name</h5>
                                <span class="text-uppercase text-secondary">Profession</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feedback end -->



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
                            <p class="mb-0">info@example.com</p>
                        </div>
                        <div class="d-flex mb-2">
                            <i class="bi bi-telephone text-primary me-2"></i>
                            <p class="mb-0">+012 345 67890</p>
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
                                    class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Class Schedule</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Our Trainers</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-secondary" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-uppercase text-light mb-4">Popular Links</h4>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Class Schedule</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Our Trainers</a>
                            <a class="text-secondary mb-2" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-secondary" href="#"><i
                                    class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
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
    <script src="FE/js/postLogin.js"></script>

</body>

</html>