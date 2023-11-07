<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Match Info</title>
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
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/style.css" rel="stylesheet">
        <link href="FE/css/matchInfo.css" rel="stylesheet">
        <link href="FE/css/toast.css" rel="stylesheet">
    </head>
    <body>
        
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
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link active">Home</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home#leaderboard"/>' class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home#schedule"/>' class="nav-item nav-link">Lịch thi đấu</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home#member"/>' class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                        <a href="rule_pre.jsp" class="dropdown-item">Luật thi đấu</a>
                                        <a href="feedback_pre.jsp" class="dropdown-item">Feedback</a>
                                        <a href="News_pre.jsp" class="dropdown-item">Tin Tức</a>
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

        <c:set var="scheduleDto" value="${requestScope.SCHEDULE_DTO}"/>
        <c:set var="listBird" value="${requestScope.LIST_BIRD}"/>
        <!-- Class Timetable Start -->
        <div id="schedule" class="container-fluid p-5">
            <div class="mb-5 text-center">
                <h1 class="display-3 text-uppercase mb-3">Thông tin trận đấu đã diễn ra</h1>
                <h3 class="text-uppercase text-primary mb-0">${scheduleDto.name}</h3>
                <h3 class="text-uppercase mb-0">Ngày: ${scheduleDto.getDateFormat()}</h3>
                <h6 id="toastmes">${requestScope.MES}</h6>
            </div>
            <div class="tab-content">

            </div>
            <div class="mb-5 text-center">
                <div class="wrapper">
                    <div class="list">
                        <div class="list__header">
                            <h1>Điểm chim sau khi được cập nhật</h1>
                        </div>
                        <div class="list__body">
                            <table class="list__table">
                                <tbody>

                                    <!-- Loop -->
                                    <c:set var="mid" value="${(listBird.size() + 1) / 2}" />
                                    <tr class="list__row">
                                        <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Top</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Chim</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Trainer</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm thay đổi</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm sau trận</small>
                                        </td>
                                    </tr>
                                    <c:if test="${not empty listBird}">
                                        <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                            <c:if test="${dto.getOrder() < mid}">
                                                <tr class="list__row">
                                                    <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value"> ${dto.order} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 300px;">
                                                        <span class="list__value"> ${dto.birdName} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 200px;">
                                                        <span class="list__value">${dto.trainer}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value">${dto.prePoint}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="color: green;">+${dto.postPoint - dto.prePoint}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <!-- row -->

                                            <!-- End of loop -->

                                        </c:forEach>
                                        <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                            <c:if test="${dto.getOrder() == mid}">
                                                <tr class="list__row">
                                                    <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                        <span class="list__value"></span>
                                                        <input type="hidden" name="txtBirdID" value="${dto.birdID}">
                                                        <input type="hidden" name="txtOrder" value="${dto.order}">
                                                        <input type="hidden" name="txtBefore" value="${dto.prePoint}">
                                                        <input type="hidden" name="txtAfter" value="${dto.postPoint}">

                                                        <small class="list__label"></small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value"> ${dto.order} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 300px;">
                                                        <span class="list__value"> ${dto.birdName} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 200px;">
                                                        <span class="list__value">${dto.trainer}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value">${dto.prePoint}</span>
                                                    </td>                                               
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="color: blue;">${dto.postPoint - dto.prePoint}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <!-- row -->

                                            <!-- End of loop -->

                                        </c:forEach>
                                        <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                            <c:if test="${dto.getOrder() > mid}">
                                                <tr class="list__row" style=" width: 1000px;">
                                                    <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                        <span class="list__value"></span>
                                                        <input type="hidden" name="txtBirdID" value="${dto.birdID}">
                                                        <input type="hidden" name="txtOrder" value="${dto.order}">
                                                        <input type="hidden" name="txtBefore" value="${dto.prePoint}">
                                                        <input type="hidden" name="txtAfter" value="${dto.postPoint}">

                                                        <small class="list__label"></small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value"> ${dto.order} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 300px;">
                                                        <span class="list__value"> ${dto.birdName} </span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96; width: 200px;">
                                                        <span class="list__value">${dto.trainer}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value">${dto.prePoint}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="color: red;">${dto.postPoint - dto.prePoint}</span>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <!-- row -->

                                            <!-- End of loop -->

                                        </c:forEach>
                                    </c:if>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>  
                <c:if test="${empty listBird}">
                    <h1 class="text-primary">Trận đấu không được diễn ra</h1>
                </c:if>                    


                <a href='<c:url value="/StartServlet"/>' class="btn btn-primary">Quay lại</a>
            </div>


        </div>
        <jsp:include page="JspCommon/webfooter.jsp" />

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="FE/lib/easing/easing.min.js"></script>
        <script src="FE/lib/waypoints/waypoints.min.js"></script>
        <script src="FE/lib/counterup/counterup.min.js"></script>
        <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="FE/js/main.js"></script>
        <script src="FE/js/schedule.js"></script>
    </body>
</html>
