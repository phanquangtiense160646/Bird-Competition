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
    <jsp:include page="JspCommon/webheader.jsp"/>
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
                                <form action="userprofile.jsp" style="z-index: 1;">



                            </div>

                            <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                <h5 class="text-white">${sessionScope.USER.userName}</h5>
                                <p>${sessionScope.USER.fullName}</p>
                            </div>
                        </div>

                    </div>
                    <!--                   <div class="p-4 text-black" style="background-color: #f8f9fa;">
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

                            <div class="container-xl px-4 mt-4">
                                <p class="lead fw-normal mb-1">Upcoming Match and History</p>


                                <hr class="mt-0 mb-4">
                                <div class="row">
                                    <div class="col-xl-12 border-bottom">
                                        <!-- Account details card-->
                                        <div class="card mb-4 upcoming-match-box">
                                            <div class="card-header"><h4>Trận đấu sắp tới</h4></div>
                                            <div class="card-body">
                                                <div class="match-box">

                                                    <c:set var="contest" value="${sessionScope.OWN_CONTEST}"/>
                                                    <c:if test="${not empty contest}">

                                                        <c:forEach items="${contest}" var="p"> 
                                                            <c:if test="${p.statusOfContest eq 2 || p.statusOfContest eq 3 || p.statusOfContest eq 1}">


                                                                <table class="match-box-content border-bottom">
                                                                    <tr>
                                                                        <td><small>Tên cuộc thi:</small></td>
                                                                        <td><h4 style="color: orange">${p.nameOfContest}</h4></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><small>Checkin Code:</small></td>
                                                                        <td>${p.checkInCode}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><small>Địa điểm:</small></td>
                                                                        <td>
                                                                            <c:if test="${not empty p.linkMap}">
                                                                                <a href="${p.linkMap}" style="color: black; text-decoration: underline orange 3px;" target="_blank">${p.location}</a>
                                                                            </c:if>
                                                                            <c:if test="${empty p.linkMap}">
                                                                                ${p.location}
                                                                            </c:if>

                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td><small>Min Point:</small></td>
                                                                        <td>${p.minPoint}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><small>Max Point:</small></td>
                                                                        <td>${p.maxPoint}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><small>Ngày diễn ra:</small></td>
                                                                        <td>${p.date}</td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><small>Số người đăng kí:</small></td>
                                                                        <td>${p.currentPar}/${p.maxPar}</td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><small>Chim tham gia:</small></td>
                                                                        <td><h5>${p.nameOfBird}</h5></td>
                                                                    </tr>

                                                                    <tr style="">
                                                                        <td><h4 style="color: green;">Kết quả</h4></td>


                                                                        <td>

                                                                            <p> Trận đấu chưa diễn ra </p>


                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </c:if>
                                                        </c:forEach> 

                                                    </c:if>
                                                    <c:if test="${empty contest}">
                                                        Bạn chưa đăng ký trận đấu nào :(
                                                    </c:if>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="card mb-4 upcoming-match-box">
                                            <div class="card-header"><h4>Trận đấu đã diễn ra</h4></div>
                                            <div class="card-body">
                                                <div class="match-box">

                                                    <c:set var="contest" value="${sessionScope.OWN_CONTEST}"/>
                                                    <c:if test="${not empty contest}">
                                                        <c:set var="counter" value="0" />
                                                        <c:forEach items="${contest}" var="p"> 
                                                            <c:if test="${p.statusOfContest eq 4}">
                                                                <c:if test="${counter < 11}">
                                                                    <table class="match-box-content border-bottom">
                                                                        <tr>
                                                                            <td><small>Tên cuộc thi:</small></td>
                                                                            <td><h4 style="color: orange">${p.nameOfContest}</h4></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><small>Checkin Code:</small></td>
                                                                            <td>${p.checkInCode}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><small>Địa điểm:</small></td>
                                                                            <td>
                                                                                <c:if test="${not empty p.linkMap}">
                                                                                    <a href="${p.linkMap}" style="color: black; text-decoration: underline orange 3px;" target="_blank">${p.location}</a>
                                                                                </c:if>
                                                                                <c:if test="${empty p.linkMap}">
                                                                                    ${p.location}
                                                                                </c:if>

                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <td><small>Min Point:</small></td>
                                                                            <td>${p.minPoint}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><small>Max Point:</small></td>
                                                                            <td>${p.maxPoint}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><small>Ngày diễn ra:</small></td>
                                                                            <td>${p.date}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td><small>Số người tham gia:</small></td>
                                                                            <td>${p.currentPar}/${p.maxPar}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td><small>Chim tham gia:</small></td>
                                                                            <td>${p.nameOfBird}</td>
                                                                        </tr>

                                                                        <tr style="">
                                                                            <td><h4 style="color: green;">Kết quả</h4></td>

                                                                            <td style="color: black;"> Điểm: ${p.afterPoint} </td>
                                                                            <td>

                                                                                <c:if test="${(p.afterPoint - p.beforePoint) >= 0}" >
                                                                                    <p style="color: green; display: inline;"> +${p.afterPoint - p.beforePoint}</p>
                                                                                </c:if>
                                                                                <c:if test="${(p.afterPoint - p.beforePoint) < 0}" >
                                                                                    <p style="color: red; display: inline;"> ${p.afterPoint - p.beforePoint}</p>
                                                                                </c:if>

                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </c:if>

                                                            </c:if>
                                                        </c:forEach> 

                                                    </c:if>
                                                    <c:if test="${empty contest}">
                                                        Bạn chưa tham gia trận đấu nào :(
                                                    </c:if>

                                                </div>
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
