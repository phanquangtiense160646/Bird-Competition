<%-- 
    Document   : matchhistory
    Created on : Oct 24, 2023, 9:32:49 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
    <head>
        <script src="FE/js/main.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Match History</title>
        <link href="FE/img/favicon.ico" rel="icon">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
              rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/userprofile.css" rel="stylesheet">

        <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>



        <link rel="stylesheet" href="FE/css/style.css">
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->


        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,500;1,900&display=swap" rel="stylesheet">

    </head>
</head>

<body class="">
    <div class="container-fluid bg-dark px-0">
        <div class="row gx-0">
            <div class="col-lg-3 bg-dark d-none d-lg-block">


                <a href="index.html" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
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
                            <a href="postLogin.jsp" class="nav-item nav-link active">Home</a>
                            <a href="leaderboard.jsp" class="nav-item nav-link">Bảng xếp hạng</a>
                            <a href="schedule.jsp" class="nav-item nav-link">Lịch thi đấu</a>
                            <a href="memberShip.html" class="nav-item nav-link">Hội viên</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    
                                    <a href="rules.html" class="dropdown-item">Luật thi đấu</a>
                                    <a href="feedback.html" class="dropdown-item">Feedback</a>
                                    <a href="news.html" class="dropdown-item">Tin Tức</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Liên Hệ</a>
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
    <section class="h-25 gradient-custom-2">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-lg-9 col-xl-7">
                    <div class="card">
                        <div class="rounded-top text-white d-flex flex-row" style="background-color: #000000; height:200px;">
                            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                <img
                                    src="FE/img/manager.png"
                                    alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                                    style="width: 150px; z-index: 1; margin-left: 10px;">
<!--                                <form action="userprofile.jsp" style="z-index: 1;">
                                    <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                            style="z-index: 0; margin-left: 17px;">
                                        User Profile
                                    </button>
                                </form>-->


                            </div>

                            <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                <h5 class="text-white">${sessionScope.USER.userName}</h5>
                                <p>${sessionScope.USER.fullName}</p>
                            </div>
                        </div>

                    </div>
<!--                    <div class="p-4 text-black" style="background-color: #f8f9fa;">
                        <div class="d-flex justify-content-end text-center py-1">
                            <div>
                                <p class="mb-1 h5"></p>
                                <p class="small text-muted mb-0">Win</p>
                            </div>
                            <div class="px-3">
                                <p class="mb-1 h5"></p>
                                <p class="small text-muted mb-0">Lose</p>
                            </div>
                            <div>
                                <p class="mb-1 h5"></p>
                                <p class="small text-muted mb-0">Tie</p>
                            </div>
                        </div>
                    </div>-->
                    <div class="card-body p-4 text-black">
                        <div class="mb-5">
                            <p class="lead fw-normal mb-1">Upcoming Match and History</p>
                            <div class="container-xl px-4 mt-4">



                                <hr class="mt-0 mb-4">
                                <div class="row">
                                    <div class="col-xl-12 border-bottom">
                                        <!-- Account details card-->
                                        <div class="card mb-4 upcoming-match-box">
                                            <div class="card-header"><h4>Match</h4></div>
                                            <div class="card-body">
                                                <div class="match-box">

                                                    <c:set var="contest" value="${sessionScope.OWN_CONTEST}"/>
                                                    <c:if test="${not empty contest}">
                                                        <c:if test="contest."></c:if>
                                                        <c:forEach items="${contest}" var="p"> 
                                                            <table class="match-box-content border-bottom">
                                                                <tr>
                                                                    <td><small>Tên cuộc thi:</small></td>
                                                                    <td><h4 style="color: orange">${p.nameOfContest}</h4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><small>CheckInCode:</small></td>
                                                                    <td><h4></h4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><small>Địa điểm:</small></td>
                                                                    <td><h4>${p.location}</h4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><small>Min Point:</small></td>
                                                                    <td><h4>${p.minPoint}</h4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><small>Max Point:</small></td>
                                                                    <td><h4>${p.maxPoint}</h4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><small>Ngày diễn ra:</small></td>
                                                                    <td>${p.date}</td>
                                                                </tr>

                                                                <tr>
                                                                    <td><small>Số người tham gia:</small></td>
                                                                    <td><h4>5/10</h4></td>
                                                                </tr>

                                                                <tr>
                                                                    <td><small>Chim tham gia:</small></td>
                                                                    <td><h5>${p.nameOfBird}</h5></td>
                                                                </tr>

                                                                <tr style="">
                                                                    <td><h1 style="color: green;">Kết quả</h1></td>

                                                                    <td style=""><h2 style="color: black;"> Point: ${p.afterPoint} </h2></td>
                                                                    <td>
                                                                        <h2 style="color: black; display: inline;"> (</h2>
                                                                        <c:if test="${(p.afterPoint - p.beforePoint) >= 0}" >
                                                                            <h2 style="color: green; display: inline;"> +${p.afterPoint - p.beforePoint}</h2>
                                                                        </c:if>
                                                                        <c:if test="${(p.afterPoint - p.beforePoint) < 0}" >
                                                                            <h2 style="color: red; display: inline;"> ${p.afterPoint - p.beforePoint}</h2>
                                                                        </c:if>
                                                                        <h2 style="color: black; display: inline;"> )</h2>
                                                                    </td>


                                                                </tr>
                                                            </table>

                                                        </c:forEach> 
                                                        
                                                    </c:if>
                                                    



                                                    <!--                                                            <div class="card mb-4">
                                                                                                                    <div class="card-header"><h4>Completed</h4></div>
                                                                                                                    <div class="card-body">
                                                                                                                        <table class="match-box-content border-bottom">
                                                                                                                            <tr>
                                                                                                                                <td><small>Địa điểm:</small></td>
                                                                                                                                <td>FPT HCM</td>
                                                                                                                            </tr>
                                                    
                                                                                                                            <tr>
                                                                                                                                <td><small>Ngày diễn ra:</small></td>
                                                                                                                                <td>20/10/2023</td>
                                                                                                                            </tr>
                                                    
                                                                                                                            <tr>
                                                                                                                                <td><small>Số người tham gia:</small></td>
                                                                                                                                <td>8/10</td>
                                                                                                                            </tr>
                                                    
                                                                                                                            <tr>
                                                                                                                                <td><small>Chim tham gia:</small></td>
                                                                                                                                <td><h5>Chào Mào Lửa</h5></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td><h3 style="color: orange;;">Kết quả:</h3></td>
                                                                                                                                <td><h5 style="color: rgb(6, 185, 6);">+15</h5></td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                        <table class="match-box-content border-bottom">
                                                                                                                            <tr>
                                                                                                                                <td><small>Địa điểm:</small></td>
                                                                                                                                <td>FPT HCM</td>
                                                                                                                            </tr>
                                                    
                                                                                                                            <tr>
                                                                                                                                <td><small>Ngày diễn ra:</small></td>
                                                                                                                                <td>20/10/2023</td>
                                                                                                                            </tr>
                                                    
                                                                                                                            <tr>
                                                                                                                                <td><small>Số người tham gia:</small></td>
                                                                                                                                <td>8/10</td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td><small>Chim tham gia:</small></td>
                                                                                                                                <td><h5>Chào Mào Lửa</h5></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td><h3 style="color: orange;">Kết quả:</h3></td>
                                                                                                                                <td><h5 style="color: red;">-20</h5></td>
                                                                                                                            </tr>
                                                                                                                        </table>-->


                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>




                        </section>
                        
                        </body>
                        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                                    <script src="FE/lib/easing/easing.min.js"></script>
                                    <script src="FE/lib/waypoints/waypoints.min.js"></script>
                                    <script src="FE/lib/counterup/counterup.min.js"></script>
                                    <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>
                        </html>
