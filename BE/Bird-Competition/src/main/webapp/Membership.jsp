<%-- 
    Document   : Membership
    Created on : Oct 31, 2023, 9:16:46 AM
    Author     : Danh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Membership</title>
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
        <link href="FE/css/toast.css" rel="stylesheet">

        <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>

    </head>

    <body>
        <!-- Header Start -->
        <jsp:include page="JspCommon/webheader.jsp"/>
        <!-- Header End -->


        <!-- Hero Start -->
        <div class="container-fluid bg-primary p-5 bg-hero mb-5">
            <div class="row py-5">
                <div class="col-12 text-center">
                    <h1 class="display-2 text-uppercase text-white mb-md-4">Hội viên</h1>
                    <a href="#registration" class="btn btn-light py-md-3 px-md-5">Tham gia ngay</a>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- About Start -->
        <div class="container-fluid p-5">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="FE/img/VipBird.png" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="text-primary text-uppercase">Hãy trở thành thành viên VIP</h5>
                        <h1 class="display-3 text-uppercase mb-0">Đặc quyền VIP</h1>
                    </div>
                    <!-- <h4 class="text-body mb-4">Diam dolor diam ipsum tempor sit. Clita erat ipsum et lorem stet no labore lorem sit clita duo justo magna dolore</h4> -->
                    <p class="mb-4">Với dịch vụ VIP, quý khách sẽ được hưởng ưu đãi độc quyền, bỏ điểm yêu cầu khi tham gia vào các trận đấu và nhận giảm giá cho các dịch vụ của chúng tôi. </p>
                    <p class="mb-4">Chúng tôi cung cấp cho các bạn 3 gói dịch vụ có sẵn: Đồng, Bạc, Vàng với các đặc quyền khác nhau, giúp bạn dễ dàng hơn trong việc chọn cho mình gói phù hợp nhất.</p>
                    <div class="rounded bg-dark p-5">
                        <ul class="nav nav-pills justify-content-between mb-3">
                            <li class="nav-item w-50">
                                <a class="nav-link text-uppercase text-center w-100 active" data-bs-toggle="pill" href="#pills-1">Thi đấu không giới hạn</a>
                            </li>
                            <li class="nav-item w-50">
                                <a class="nav-link text-uppercase text-center w-100" data-bs-toggle="pill" href="#pills-2">Giảm giá dịch vụ</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="pills-1">
                                <p class="text-secondary mb-0">Với gói người dùng VIP, bạn sẽ được đăng kí tham gia thi đấu kể cả khi Chim của bạn không đủ hoặc vượt quá số điểm mà trận đấu yêu cầu.</p>
                                <p class="text-secondary mb-0">Điều này sẽ hỗ trợ cho các chiến lược cá nhân của bạn, như là giúp Chim của bạn tăng điểm nhanh hơn khi tham gia vào những trận có mức điểm yêu cầu lớn hơn với số điểm mà Chim bạn có, nó cũng yêu cầu chim của bạn phải đủ khỏe để có thể chiến thắng trận đấu không cân sức này, nhưng phần thưởng nhận được lại vô cùng xứng đáng.</p>

                            </div>
                            <div class="tab-pane fade" id="pills-2">

                                <p class="text-secondary mb-0">Nếu bạn là một người yêu thích và thường xuyên tham gia nhiều trận đấu, nhưng bạn lại e ngại về số tiền lớn phải bỏ ra để đăng ký thi đấu, vậy gói thành viên VIP sẽ giúp bạn điều đó.</p>
                                <p class="text-secondary mb-0"> Với gói VIP bạn sẽ được giảm giá (tùy theo gói dịch vụ) cho các trận đấu mà bạn đăng ký tham gia.</p>                           
                                <p class="text-secondary mb-0">Điều này sẽ vô cùng hữu ích với các Trainer tham gia nhiều trận đấu vì càng nhiều trận đấu bạn tham gia, sẽ càng nhiều chi phí bạn sẽ tiết kiệm.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <c:set var="user" value="${sessionScope.USER}"/>
        <c:set var="expired" value="${requestScope.EXPIRED}"/>


        <!-- Registration Start -->
        <div class="container-fluid programe position-relative px-5 mt-5" id="registration" style="margin-bottom: 180px;">
            <div class="row g-5 gb-5">
                <!--BRONZE-->
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1 medal3"></i>
                        <div style="height: 250px;">

                            <h3 class="text-uppercase my-4">Bronze Member</h3>
                            <p>Gói Thành viên Đồng</p>
                            <p>Trở thành thành viên VIP và được nhận các ưu đãi của chúng tôi trong vòng 12 tháng. <br>
                                Với giá dịch vụ được giảm 10% và bạn có thể tham gia các trận đấu với điểm yêu cầu vượt quá 200 so với điểm của bạn.
                            </p>
                        </div>
                        <div style="height: 85px;">
                            <c:if test="${user.vipType == null}">
                                <form action="VnPayServlet" method="post">
                                    <p style="font-weight: bold;">200.000 vnđ</p>
                                    <input type="hidden" name="txtCost" value="200000">
                                    <input type="hidden" name="txtType" value="1">

                                    <button class="btn btn-primary" type="submit" value="VipRegis" name="btAction">
                                        Đăng ký ngay
                                    </button>
                                </form>

                            </c:if>
                            <c:if test="${user.vipType != null}">
                                <c:if test="${user.getVipType() eq '1'}">
                                    <p style="font-weight: bold; font-size: larger" class="text-primary">Gói hiện tại</p>
                                    <p style="font-weight: bold; font-size: larger">Ngày hết hạn: ${expired}</p>

                                </c:if>

                                <c:if test="${user.getVipType() gt '1'}">
                                    <button class="btn btn-secondary text-light">
                                        Đăng ký ngay
                                    </button>
                                </c:if>
                            </c:if>
                        </div>


                    </div>
                </div>
                <!--GOLD-->
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1 medal1"></i>
                        <div style="height: 250px;">

                            <h1 class="text-uppercase my-4">Gold Member</h1>
                            <p>Gói Thành viên Vàng</p>

                            <p>Trở thành thành viên VIP và được nhận các ưu đãi của chúng tôi trong vòng 12 tháng. <br>
                                Với giá dịch vụ được giảm 20% và bạn có thể tham gia các trận đấu với không giới hạn về điểm yêu cầu.
                            </p>                    
                        </div>
                        <div style="height: 85px;">
                            <c:if test="${user.vipType == null}">
                                <form action="VnPayServlet" method="post">
                                    <p style="font-weight: bold;">500.000 vnđ</p>
                                    <input type="hidden" name="txtCost" value="500000">
                                    <input type="hidden" name="txtType" value="3">


                                    <button class="btn btn-primary" type="submit" value="VipRegis" name="btAction">
                                        Đăng ký ngay
                                    </button>
                                </form>

                            </c:if>
                            <c:if test="${user.vipType != null}">
                                <c:if test="${user.getVipType() eq '3'}">
                                    <p style="font-weight: bold; font-size: larger" class="text-primary">Gói hiện tại</p>
                                    <p style="font-weight: bold; font-size: larger">Ngày hết hạn: ${expired}</p>

                                </c:if>
                                <c:if test="${user.getVipType() lt '3'}">
                                    <form action="VnPayServlet" method="post">
                                        <c:set var="costTo3" value="${requestScope.VIP3}" />
                                        <p style="font-weight: bold;" class="text-decoration-line-through">500.000 vnđ</p>
                                        <p style="font-weight: bold;">Giảm giá: ${costTo3/1000}00 vnđ</p>

                                        <input type="hidden" name="txtCost" value="${costTo3}">
                                        <input type="hidden" name="txtType" value="U3">

                                        <button class="btn btn-secondary" style="color: #0f6848" type="submit" value="VipUpdate" name="btAction">
                                            Nâng cấp gói
                                        </button>
                                    </form>
                                </c:if>


                            </c:if>
                        </div>



                    </div>
                </div>
                <!--SILVER-->
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1"></i>
                        <div style="height: 250px;">

                            <h3 class="text-uppercase my-4">Silver Member</h3>
                            <p>Gói Thành viên Bạc</p>
                            <p>Trở thành thành viên VIP và được nhận các ưu đãi của chúng tôi trong vòng 12 tháng. <br>
                                Với giá dịch vụ được giảm 15% và bạn có thể tham gia các trận đấu với điểm yêu cầu vượt quá 500 so với điểm của bạn.
                            </p> 
                        </div>

                        <div style="height: 85px;">
                            <c:if test="${user.vipType == null}">
                                <form action="VnPayServlet" method="post">
                                    <p style="font-weight: bold;">300.000 vnđ</p>
                                    <input type="hidden" name="txtCost" value="300000">
                                    <input type="hidden" name="txtType" value="2">


                                    <button class="btn btn-primary" type="submit" value="VipRegis" name="btAction">
                                        Đăng ký ngay
                                    </button>
                                </form>

                            </c:if>
                            <c:if test="${user.vipType != null}">
                                <c:if test="${user.getVipType() eq '2'}">

                                    <p style="font-weight: bold; font-size: larger" class="text-primary">Gói hiện tại</p>
                                    <p style="font-weight: bold; font-size: larger">Ngày hết hạn: ${expired}</p>



                                </c:if>
                                <c:if test="${user.getVipType() lt '2'}">
                                    <form action="VnPayServlet" method="post">
                                        <c:set var="costTo2" value="${requestScope.VIP2}" />
                                        <p style="font-weight: bold;" class="text-decoration-line-through">300.000 vnđ</p>
                                        <p style="font-weight: bold;">Giảm giá: ${costTo2/1000}00 vnđ</p>

                                        <input type="hidden" name="txtCost" value="${costTo2}">
                                        <input type="hidden" name="txtType" value="U2">

                                        <button class="btn btn-secondary" style="color: #0f6848" type="submit" value="VipUpdate" name="btAction">
                                            Nâng cấp gói
                                        </button>
                                    </form>
                                </c:if>
                                <c:if test="${user.getVipType() gt '2'}">
                                    <button class="btn btn-secondary text-light">
                                        Đăng ký ngay
                                    </button>
                                </c:if>

                            </c:if>
                        </div>


                    </div>
                </div>
                <div class="col-lg-12 col-md-6 text-center">
                </div>
            </div>
        </div>
        <!-- Registration End -->

        <c:set var="msg" value="${requestScope.Message}" />
        <h6 id="toastmes">${msg}</h6>
        <div id="toast"></div>

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
        <script src="FE/js/Membership.js"></script>
    </body>

</html>

