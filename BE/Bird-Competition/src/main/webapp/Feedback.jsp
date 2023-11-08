<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>


<head>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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
                <h1 class="display-2 text-uppercase text-white mb-md-4">Feedback</h1>
                <a href="postlogin.html" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                <a href="#feedback" class="btn btn-light py-md-3 px-md-5">Gửi Feedback</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Testimonial Start -->
    <div class="container-fluid p-0" style="margin: 90px 0;">
        <div class="row g-0">
            <div class="col-lg-6" style="min-height: 500px;">
                <div class="position-relative h-100">
                    <img class="position-absolute w-100 h-100" src="FE/img/bird_player.png" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 bg-dark p-5">
                <div class="mb-5">
                    <h5 class="text-primary text-uppercase">Đánh giá</h5>
                    <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                </div>
                <c:set var="feedback" value="${requestScope.FEEDBACK}" /> 
                <c:set var="size" value="${10}" />

                <c:if test="${feedback.size() <= size}">
                    <c:set var="size" value="${feedback.size()}" />
                </c:if>
                <div class="owl-carousel testimonial-carousel">
                    <c:if test="${not empty feedback}">
                        <c:forEach var="i" begin="0" end="${size -1 }" step="1">

                            <div class="testimonial-item">
                                <p class="fs-4 fw-normal text-light mb-4"><i 
                                        class="fa fa-quote-left text-primary me-3"></i>${feedback.get(i).getDescription()}</p>
                                <div class="d-flex align-items-center">

                                    <div class="ps-4">
                                        <h5 class="text-uppercase text-light">${feedback.get(i).getIdMember()}</h5>
                                        <span class="text-uppercase text-secondary">Trainer</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

    <!-- Give Feedback start -->
    <div class="row g-0, d-flex justify-content-center" id="feedback">
        <div class="col-lg-6">
            <div class="bg-dark p-5">
                <form action="AddFeedbackServlet" method="get">
                  
                    <div style="text-align: center">
                        <h2 style="color: white"  >Nhập Phản Hồi Của Bạn Cho Chúng Tôi</h2>
                    </div>

                    <div class="col-12">
                        <textarea class="form-control bg-light border-0 px-4 py-3" rows="4" name="txtDescription" placeholder="Nội dung"></textarea>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary w-100 py-3" type="submit" name="Add Feedback">Gửi Feedback</button>
                    </div>
                </form>

            </div>

        </div>
    </div>
    <!-- <div class="col-lg-6">
        <iframe class="w-100"
            src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=FPT University HCMC&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
            frameborder="0" style="height: 457px; border:0;" allowfullscreen="" aria-hidden="false"
            tabindex="0"></iframe>
    </div> -->
</div>
<!-- Give Feedback end -->

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
</body>

</html>