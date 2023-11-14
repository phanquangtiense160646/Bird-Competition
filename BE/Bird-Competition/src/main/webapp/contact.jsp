<%-- 
    Document   : contact
    Created on : Nov 4, 2023, 12:07:19 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Contact</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="FE/ img/favicon.ico" rel="icon">
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
    <!-- Header Start -->
    <jsp:include page="JspCommon/webheader.jsp"/>
    <!-- Header End -->


    <!-- Hero Start -->
    <div class="container-fluid bg-primary p-5 bg-hero mb-5">
        <div class="row py-5">
            <div class="col-12 text-center">
                <h1 class="display-2 text-uppercase text-white mb-md-4">Liên hệ chúng tôi</h1>
                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                <a href="#msg" class="btn btn-light py-md-3 px-md-5">Liên hệ</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Contact Start -->
    <div class="container-fluid p-5">
        <div class="mb-5 text-center">
            <h5 class="text-primary text-uppercase">Liên lạc với chúng tôi</h5>
            <h1 class="display-3 text-uppercase mb-0">Liên Hệ</h1>
        </div>
        <div class="row g-5 mb-5">
            <div class="col-lg-4">
                <div class="d-flex flex-column align-items-center bg-dark rounded text-center py-5 px-3">
                    <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                        <i class="fa fa-map-marker-alt fs-4 text-white"></i>
                    </div>
                    <h5 class="text-uppercase text-primary">Địa chỉ</h5>
                    <p class="text-secondary mb-0">FPT University HCMC</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="d-flex flex-column align-items-center bg-dark rounded text-center py-5 px-3">
                    <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                        <i class="fa fa-envelope fs-4 text-white"></i>
                    </div>
                    <h5 class="text-uppercase text-primary">Email</h5>
                    <p class="text-secondary mb-0">birdfight@compe.com</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="d-flex flex-column align-items-center bg-dark rounded text-center py-5 px-3">
                    <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                        <i class="fa fa-phone fs-4 text-white"></i>
                    </div>
                    <h5 class="text-uppercase text-primary">SĐT</h5>
                    <p class="text-secondary mb-0">+8490 978 0107</p>
                </div>
            </div>
        </div>
        <div class="row g-0" id="msg">
            <!--            <div class="col-lg-6">
                            <div class="bg-dark p-5">
                                <form>
                                    <div class="row g-3">
                                        <div class="col-6">
                                            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Tên" style="height: 55px;">
                                        </div>
                                        <div class="col-6">
                                            <input type="email" class="form-control bg-light border-0 px-4" placeholder="Email" style="height: 55px;">
                                        </div>
                                        <div class="col-12">
                                            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Tiêu đề" style="height: 55px;">
                                        </div>
                                        <div class="col-12">
                                            <textarea class="form-control bg-light border-0 px-4 py-3" rows="4" placeholder="Nội dung"></textarea>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 py-3" type="submit">Gửi lời nhắn</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>-->
            <div class="col-lg-6" >
               
                    <img class="w-100" src="FE/img/dai-hoc-fpt-tp-hcm.jpeg"/>

            </div>
            <div class="col-lg-6">
                <iframe class="w-100"
                        src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=FPT University HCMC&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
                        frameborder="0" style="height: 457px; border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
            </div>
        </div>
    </div>
    <!-- Contact End -->


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
