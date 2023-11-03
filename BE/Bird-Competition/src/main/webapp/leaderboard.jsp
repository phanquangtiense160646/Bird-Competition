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
        <jsp:include page="JspCommon/webheader.jsp"/>
        <!-- Header End -->
        <c:set var="leaderboard" value="${requestScope.LEADER_BOARD}" />
        <c:set var="searchList" value="${requestScope.SEARCH_RS}" />
        <c:set var="persionalLb" value="${requestScope.PERSIONAL_LB}" />

        <!-- Hero Start -->
        <!--        <div class="container-fluid bg-primary p-5 bg-hero mb-5">
                    <div class="row py-5">
                        <div class="col-12 text-center">
                            <h1 class="display-2 text-uppercase text-white mb-md-4">Bảng xếp hạng</h1>
                            <a href="#board" class="btn btn-light py-md-3 px-md-5">Xem bảng xếp hạng</a>
                            <a href="#p-board" class="btn btn-light py-md-3 px-md-5">Xem xếp hạng chim của bạn</a>
        
                        </div>
                    </div>
                </div>-->
        <!-- Hero End -->

        <!--        
                <form action="DispatchServlet" class="d-flex justify-content-center">
                    <button type="submit" value="LeaderBoard" name="btAction">Load</button> 
                </form>-->


        <!--Search in Leader board start-->
        <form action="DispatchServlet">
            <div class='container' tabindex='1'>
                <div class='search-container' tabindex='1'>
                    <input class="text-black-50" placeholder='Tìm kiếm' type='text' name="txtSearchValue" value="${param.txtSearchValue}">
                    <button class='button' type="submit" value="SearchLB" name="btAction">
                        <i class='fa fa-search'></i>
                    </button>
                </div>
            </div>
        </form>

        <c:set var="searchValue" value="${param.txtSearchValue}" /> 
        <c:if test="${not empty searchValue}">
            <c:if test="${not empty searchList}">
                <div class="wrapper">
                    <div class="list">
                        <!--<div class="list__header">
                            <h1>Bảng xếp hạng</h1>
                        </div>-->
                        <div class="list__body">
                            <table class="list__table">
                                <tbody>
                                    <!-- Loop -->
                                    <c:forEach items="${searchList}" var="dto" varStatus="counter">
                                        <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win= ${dto.win} data-lose= ${dto.lose} data-tie= ${dto.tie} data-match= "${dto.matchNumber}">
                                            <td class="list__cell" style="background: #CED4DA; color:#868E96;">
                                                <span class="list__value"> ${dto.rank}</span>
                                                <!--<small class="list__label">Hạng</small>-->
                                            </td>
                                            <td class="list__cell" style="color:#868E96;">
                                                <span class="list__value"> ${dto.birdName} </span>
                                                <small class="list__label">Chim</small>
                                            </td>
                                            <td class="list__cell" style="color:#868E96;">
                                                <span class="list__value">${dto.memberID}</span>
                                                <small class="list__label">Trainer</small>
                                            </td>
                                            <td class="list__cell" style="color:#868E96;">
                                                <span class="list__value"> ${dto.point} </span>
                                                <small class="list__label">Điểm</small>
                                            </td>
                                        </tr>
                                        <!-- row -->
                                        <!-- End of loop -->
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="overlay"></div>
            </c:if>
            <c:if test="${empty searchList}">
                <div class="mb-5 text-center">
                    <div class="list">

                        <h5 class="text-black my-auto">Không tìm thấy chim!</h5>

                    </div>
                </div>
            </c:if>
        </c:if>
        <!--Search in Leader board end-->

        <!-- Top Bird Start -->
        <c:if test="${not empty leaderboard}">
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
                                        <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[1].winRate()}%</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(173, 181, 189, .9);">
                                <h5 class="text-uppercase text-light">${leaderboard[1].birdName}</h5>
                                <p class="text-uppercase text-white m-0">Top 2</p>
                                <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[1].memberID}</p>


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
                                        <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[0].winRate()}%</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(255, 218, 101, .9);">
                                <h5 class="text-uppercase text-light">${leaderboard[0].birdName}</h5>
                                <p class="text-uppercase text-white m-0">Top 1</p>
                                <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[0].memberID}</p>

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

                                        <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng: ${leaderboard[2].winRate()}%</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4" style="background: rgba(201, 147, 85, .9);">
                                <h5 class="text-uppercase text-light">${leaderboard[2].birdName}</h5>
                                <p class="text-uppercase text-white m-0">Top 3</p>
                                <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[2].memberID}</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>               
        <!-- Top Bird End -->



        <!-- Leaderboard start -->
        <div class="wrapper" id="board">
            <div class="list">
                <div class="list__header">
                    <h1>Bảng xếp hạng</h1>
                </div>
                <div class="list__body">
                    <table class="list__table">
                        <tbody>
                            <!-- Loop -->
                            <%--<c:forEach items="${leaderboard}" var="dto" varStatus="counter">--%>

                            <c:set var="size" value="${15}" />
                            <%--<c:set var="range" value="${10}" />--%>
                            <c:if test="${leaderboard.size() <= size}">
                                <c:set var="size" value="${leaderboard.size()}" />
                            </c:if>

                            <c:forEach var="i" begin="0" end="${size -1 }" step="1">

                                <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win= ${leaderboard.get(i).win} data-lose= ${leaderboard.get(i).lose} data-tie= ${leaderboard.get(i).tie} data-match= "${leaderboard.get(i).matchNumber}">
                                    <td class="list__cell">
                                        <span class="list__value"> ${leaderboard.get(i).rank}</span>
                                        <!--<small class="list__label">Hạng</small>-->

                                    </td>
                                    <td class="list__cell">
                                        <span class="list__value"> ${leaderboard.get(i).birdName} </span>
                                        <small class="list__label">Chim</small>
                                    </td>
                                    <td class="list__cell">
                                        <span class="list__value">${leaderboard.get(i).memberID}</span>
                                        <small class="list__label">Trainer</small>
                                    </td>
                                    <td class="list__cell">
                                        <span class="list__value"> ${leaderboard.get(i).point} </span>
                                        <small class="list__label">Điểm</small>
                                    </td>
                                </tr>
                                <!-- row -->
                                <!-- End of loop -->
                            </c:forEach>
                        </tbody>
                    </table>
                    <!--<button class="view-more_bt">Xem thêm</button>-->
                </div>
            </div>

            <div>
                <div class="col">
                    <div class="col-10">
                        <!--<button class="view-more_bt">Xem thêm</button>-->
                    </div>
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


        <!-- Leaderboard end -->

        <!-- Personal Leaderboard start -->
          <div class="wrapper">
                    <div class="list">
                        <div class="list__header">
                            <h3>Bảng xếp hạng các chim của bạn</h3>
                        </div>
                        <div class="list__body">
                            <table class="list__table">
                                <tbody>
                                    <!-- Loop -->
                                    <c:forEach items="${persionalLb}" var="dto" varStatus="counter">
                                        <tr class="list__row" data-image="FE/img/thuanphuong.jpg" data-win= ${dto.win} data-lose= ${dto.lose} data-tie= ${dto.tie} data-match= "${dto.matchNumber}">
                                            <td class="list__cell" >
                                                <span class="list__value"> ${dto.rank}</span>
                                                <!--<small class="list__label">Hạng</small>-->
                                            </td>
                                            <td class="list__cell" >
                                                <span class="list__value"> ${dto.birdName} </span>
                                                <small class="list__label">Chim</small>
                                            </td>
                                            <td class="list__cell">
                                                <span class="list__value d-none">${dto.memberID}</span>
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
                        </div>
                    </div>
                </div>

                <div class="overlay"></div>

            <!-- Personal Leaderboard end -->


            <!-- Footer Start -->
                  <jsp:include page="JspCommon/webfooter.jsp"/>

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
