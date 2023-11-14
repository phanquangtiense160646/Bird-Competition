
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
        <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>
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
        <jsp:include page="JspCommon/webheader.jsp"/>
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

        <div class="col-lg-12">
            <div class="row g-5">
                <!-- Blog list Start -->
                <div class="col-lg-8">
                    <div class="row g-5">

                        <c:set var="newsList" value="${requestScope.NEWS}"/>
                        <c:if test="${not empty newsList}">

                            <c:forEach items="${newsList}" var="o">
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="position-relative overflow-hidden rounded-top">
                                            <img class="img-fluid" style="width: 600px; height: 400px; object-fit: cover;" src="${o.photo}" alt="">
                                        </div>
                                        <div class="bg-dark d-flex align-items-center rounded-bottom p-4" style="height: 100px">
                                            <a href="${o.getLinkOfNews()}" target="_blank">
                                                <p class="text-light text-uppercase mb-0">${o.getNameOfNews()}</p>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty newsList}">
                            <h1>Chưa có tin</h1>
                        </c:if>




                    </div>
                </div>
                <!-- Blog list End -->
                <!-- Sidebar Start -->
                <div class="col-lg-4">


                    <!-- Category Start -->
                    <div class="mb-5">
                        <h3 class="text-uppercase mb-4">Thể Loại</h3>
                        <div class="d-flex flex-column justify-content-start bg-dark rounded p-4">
                            <p class="fs-5 fw-bold text-light text-uppercase mb-2" >Chim Chào Mào</p>
                            <p class="fs-5 fw-bold text-light text-uppercase mb-2" >Thi Hót</p>
                            <p class="fs-5 fw-bold text-light text-uppercase mb-2" >Thi Bề Ngoài</p>
                           
                        </div>
                    </div>
                    <!-- Category End -->


                    <!-- Plain Text Start -->
                    <div>
                        <h3 class="text-uppercase mb-4">Đăng Ký VIP</h3>
                        <div class="bg-dark rounded text-center text-light" style="padding: 30px;">
                            <p>Trở thành hội viên VIP có nhiều đặc quyền riêng và có giá ưu đãi dành cho gói tháng.</p>
                            <a href='<c:url value="/DispatchServlet?btAction=Membership"/>' class="btn btn-primary py-2 px-4">Xem Thêm</a>
                        </div>
                    </div>
                    <!-- Plain Text End -->
                </div>
                <!-- Sidebar End -->
            </div>
        </div>



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