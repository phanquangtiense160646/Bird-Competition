<%-- 
    Document   : schedule
    Created on : Oct 19, 2023, 5:00:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
              rel="stylesheet">

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
        <link href="FE/css/Schedule.css" rel="stylesheet">
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
                                <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' class="nav-item nav-link">Home</a>
                                <a href="leaderboard.html" class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href="#" class="nav-item nav-link active">Lịch thi đấu</a>
                                <a href="memberShip.html" class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="news.html" class="dropdown-item">News</a>
                                        <a href="rules.html" class="dropdown-item">Luật thi đấu</a>
                                        <a href="feedback.html" class="dropdown-item">Feedback</a>
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
                            <a href="/UserProfile/userprofile.html" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">
                                ${sessionScope.USER.userName}</a>
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
                    <h1 class="display-2 text-uppercase text-white mb-md-4">Lịch thi đấu</h1>
                    <!-- <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                    <a href="" class="btn btn-light py-md-3 px-md-5">Classes</a> -->
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Class Timetable Start -->
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
                        <a class="nav-link rounded-pill text-white active" data-bs-toggle="pill" href="#tab-1">Đang diễn ra</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-2">Sắp diễn ra</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-0" class="tab-pane fade show p-0">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3 btn">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary btn">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Gà chiến</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu: ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span>
                                            </p>
                                            <button class="btn btn-primary btn-viewInfo px-5" style="margin-top: 10px;">Đăng kí
                                                thi đấu</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3 btn">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary btn">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Gà chiến</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu: ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span>
                                            </p>
                                            <button class="btn btn-primary btn-viewInfo px-5" style="margin-top: 10px;">Đăng kí
                                                thi đấu</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-register">
                                        <div class="bg-dark rounded text-center py-5 px-3">
                                            <p class="schedule-value text-uppercase text-light mb-3">Ngày: ${scheduleDto.date}</p>
                                            <p class="schedule-value text-uppercase text-light mb-3"> Giờ: 2.00am - 5.00am</p>
                                            <p class="schedule-value text-uppercase text-light mb-3 btn">Địa điểm: ${scheduleDto.location}</p>
                                            <p class="schedule-value text-uppercase text-primary btn">${scheduleDto.name}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Loại chim: Gà chiến</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0">Điểm yêu cầu: ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                            <p class="schedule-value text-uppercase text-light mb-3">Phí đăng kí: ${scheduleDto.fee}</p>
                                            <p class="schedule-value text-uppercase text-secondary mb-0" style="display: inline;">
                                                số người đăng kí:
                                                <span class="text-uppercase text-primary mb-0" style="display: inline;">
                                                    10/15</span>
                                            </p>
                                            <input class="idHide" type="hidden" value="${scheduleDto.id}"/>
                                            <button class="btn btn-primary btn-register px-5" style="margin-top: 10px;">Đăng kí
                                                thi đấu</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="schedule" class="schedule-overlay">
            <div class="shedule-form col-lg-4 col-md-5 col-sm-6">
                <div class="schedule-header">
                    <div class="text-primary">Thông tin trận đấu</div>
                    <!-- <div class="button--close">X</div> -->
                    <button class="button--close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <circle cx="12" cy="12" r="10" />
                        <line x1="15" y1="9" x2="9" y2="15" />
                        <line x1="9" y1="9" x2="15" y2="15" />
                        </svg>
                    </button>
                </div>

                <div class="schedule-body d-flex justify-content-center"></div>
            </div>


        </div>
        <!-- Class Timetable End -->
        <script type="text/javascript">
            const buyBtn = document.querySelectorAll(".btn-register");
            const schedule = document.querySelector('.schedule-overlay');
            const sidebarClose = () => {
                schedule.classList.remove("is-open");
            };

            buyBtn.forEach(buyBtn => {
                buyBtn.addEventListener("click", function () {
                    schedule.classList.add("is-open");

                    const body = document.querySelector('.schedule-body');
                    body.innerHTML = '';

                    const newDriver = document.createElement('div');
                    newDriver.classList = 'schedule-detail';

                    var date, time, place, tOC, tOB, registerNumber, pointReq, hiddenId,fee;

                    if (this.querySelector(".schedule-value:nth-of-type(1)") !== null) {
                        date = this.querySelector(".schedule-value:nth-of-type(1)").innerHTML;
                        time = this.querySelector(".schedule-value:nth-of-type(2)").innerHTML;
                        place = this.querySelector(".schedule-value:nth-of-type(3)").innerHTML;
                        tOC = this.querySelector(".schedule-value:nth-of-type(4)").innerHTML;
                        tOB = this.querySelector(".schedule-value:nth-of-type(5)").innerHTML;
                        pointReq = this.querySelector(".schedule-value:nth-of-type(6)").innerHTML;
                        fee = this.querySelector(".schedule-value:nth-of-type(7)").innerHTML;
                        registerNumber = this.querySelector(".schedule-value:nth-of-type(8) span").innerHTML;
                        hiddenId = this.querySelector(".idHide").value;
                    }

                    const birds = [];
            <c:set var="scheduleData" value="${sessionScope.SCHEDULE}"/>
            <c:if test="${not empty scheduleData}">
                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                    birds.push("${scheduleDto.name}");
                </c:forEach>
            </c:if>
                    let text = "";

                    for (let i = 0; i < birds.length; i++) {
                        text += "<option>" + birds[i] + "</option>";
                    }

                    newDriver.innerHTML = `
                    <div>                                    
                    <h6 class="text-uppercase text-light mb-3 ml-3">` + date + `</h6>
                    <h6 class="text-uppercase text-light mb-3 ml-3">` + time + `</h6>
                    <h6 class="text-uppercase text-light mb-3 ml-3">` + place + `</h6>
                    <h5 class="text-uppercase text-primary">` + tOC + `</h5>
                    <p class="text-uppercase text-secondary mb-0 ml-3">` + tOB + `</p>
                    <p class="text-uppercase text-secondary mb-0 ml-3">` + pointReq + `</p>
                    <h6 class="text-uppercase text-light mb-3 ml-3">` + fee + `</h6>
                    <p class="text-uppercase text-secondary mb-0 ml-3" style="display: inline;">
                        số người đăng kí:
                    <span class="text-uppercase text-primary mb-0 ml-3" style="display: inline;">` + registerNumber + `</span>
                    </p>                     
                    </div>
                    <form action="DispatchServlet">
                        <h6 class="text-uppercase text-secondary mb-3 ml-3">Chọn chim đăng ký:  
                        <select aria-label="chooseBird" name="cboBird">
                            <option selected disabled>Chim</option>
                            ` + text + `
                        </select>
                        <input type="hidden" name="hiddenContestId" value="`+ hiddenId +`"/>                        
                    <button type="submit" name="btAction" value="cRegister" class="btn btn-primary px-5" style="margin-top: 10px;">Đăng kí thi đấu</button>
                     </form>
                    `;



                    body.appendChild(newDriver);
                });
            });
            const closeOverlayBtn = document.querySelector(".button--close");
            closeOverlayBtn.addEventListener("click", sidebarClose);


        </script>
        <script type="text/javascript">
            const viewInfo = document.querySelectorAll(".btn-viewInfo");
            <!--<button type="submit" name="btAction" value="cRegister" class="btn btn-primary px-5" style="margin-top: 10px;">Đăng kí thi đấu</button>-->

        </script>

        
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
                <div class="col-lg-4 col-md-6">
                    <div
                        class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-5">
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
                        <p class="text-secondary mb-0">&copy; <a class="text-light fw-bold" href="#">Your Site Name</a>. All
                            Rights Reserved.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="py-lg-4 text-center credit">
                        <p class="text-light mb-0">Designed by <a class="text-light fw-bold"
                                                                  href="https://htmlcodex.com">HTML Codex</a></p>
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
