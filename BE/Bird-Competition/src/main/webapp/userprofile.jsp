<%-- 
    Document   : userprofile
    Created on : Oct 22, 2023, 6:46:42 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
        <script src="FE/js/main.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
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



        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,500;1,900&display=swap" rel="stylesheet">

    </head>

    <body>
        <jsp:include page="JspCommon/webheader.jsp"/>

        <section class="h-25 gradient-custom-2">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-9 col-xl-7">
                        <div class="card">
                            <div class="rounded-top text-white d-flex flex-row" style="background-color: #000000; height:200px;">
                                <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                    <img
                                        src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/331044364_1135565673791935_1693572774874518896_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=XK0r9dQmanUAX_FUmQO&_nc_ht=scontent.fsgn2-5.fna&_nc_e2o=s&oh=00_AfCgR_jHe4yv8Y2TppEaLM8usFhnk-8DrdTekWraoyG42Q&oe=653D0519"
                                        alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                                        style="width: 150px; z-index: 1; margin-left: 10px;">
                                    <form action="#editprofile-dialog" style="z-index: 1;">
                                        <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                style="z-index: 0; margin-left: 17px;">
                                            Edit profile
                                        </button>
                                    </form>
                                    <form action="DispatchServlet" style="z-index: 1;">
                                        <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                style="z-index: 0; margin-left: 17px;" 
                                                name="btAction" value="PaymentHistory">
                                            Match History
                                        </button>
                                    </form>


                                </div>

                                <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                    <h5 class="text-white">${sessionScope.USER.userName}</h5>
                                    <p>${sessionScope.USER.fullName}</p>
                                </div>
                            </div>
                            <div class="p-5 text-black" style="background-color: #f8f9fa;">
                                <div class="d-flex justify-content-end text-center py-1">
                                    <div>
                                        <p class="mb-1 h5">1</p>
                                        <p class="small text-muted mb-0">Total Match</p>
                                    </div>
                                    <div class="px-3">
                                        <p class="mb-1 h5">51</p>
                                        <p class="small text-muted mb-0">Win</p>
                                    </div>
                                    <div>
                                        <p class="mb-1 h5">49</p>
                                        <p class="small text-muted mb-0">Lose</p>
                                    </div>
                                </div>
                            </div>

                            <!--                Con chim-->
                            <div class="card-body p-4 text-black">
                                <div class="mb-5">
                                    <p class="lead fw-normal mb-1">About</p>
                                    <div class="p-4" style="background-color: #f8f9fa;">
                                        <p class="font-italic mb-1">Thích Chơi Chim</p>
                                        <p class="font-italic mb-1">${sessionScope.USER.userGmail}</p>
                                        <p class="font-italic mb-2">---</p>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <p class="lead fw-normal mb-0">Bird Category</p>
                                    <p class="mb-0"><a href="#!" class="text-muted">Show all</a></p>
                                </div>

                                <div class="row g-2">
                                    <div class="box col mb-5">
                                        <div class="imghover">
                                            <form action="#my-dialog">
                                                <button class="btn">Info</button>
                                            </form>
                                        </div>

                                        <img src="https://tmso.baotanglamdong.com.vn/wp-content/uploads/2021/10/CHAO-MAO-DIT-DO-3.jpg">
                                        <p class="birdname" style="font-weight: bold; text-align:center;">CHÀO MÀO LỬA</p>
                                    </div>

                                    <div class="box col mb-5">
                                        <div class="imghover">
                                            <form action="#my-dialog1">
                                                <button class="btn">Info</button>
                                            </form>
                                        </div>
                                        <img src="https://static-images.vnncdn.net/files/publish/2022/11/13/chim-chao-mao-4-937.jpg">
                                        <p class="birdname" style="font-weight: bold; text-align:center;">TAM ĐIỂU BẠCH TẠNG </p>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <a href="/FE/index.html" class="btn btn-outline-dark btn-primary" data-mdb-ripple-color="dark"
                               style="z-index: 0; margin-left: 17px; margin-top: 30px; margin-bottom: 40px;">Đăng xuất</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- Dialog -->
        <div class="dialog overlay" id="my-dialog">
            <a href="#close-dialog" class="overlay-close"></a>
            <div id="close-dialog" class="dialog-body">
                <a href="#close-dialog" class="dialog-close-btn">&times;</a>
                <header class="dialog-content-header border-bottom">Thông tin chim</header>

                <table class="dialog-content-body">
                    <tr>
                        <td><small>Tên:</small></td>
                        <td>Chào Mào Lửa</td>
                    </tr>

                    <tr>
                        <td><small>Ngày Thêm Vào:</small></td>
                        <td>29/04/2023</td>
                    </tr>

                    <tr>
                        <td><small>Tổng Số Trận:</small></td>
                        <td>10</td>
                    </tr>

                    <tr>
                        <td><small>Số Trận Thắng:</small></td>
                        <td>6</td>
                    </tr>

                    <tr>
                        <td><small>Số Trận Thua:</small></td>
                        <td>4</td>
                    </tr>

                    <tr>
                        <td><small>Tỉ Lệ Thắng:</small></td>
                        <td>60%</td>
                    </tr>
                </table>

            </div>

        </div>

        <!-- Edit profile dialog  -->
        <div class="dialog overlay" id="editprofile-dialog">
            <a href="#close-dialog" class="overlay-close"></a>
            <div id="close-dialog" class="dialog-body">
                <a href="#close-dialog" class="dialog-close-btn">&times;</a>
                <header class="dialog-content-header border-bottom">Chỉnh sửa thông tin cá nhân</header>



                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <form>
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the
                                    site)</label>
                                <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username"
                                       value="${sessionScope.USER.userName}">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">

                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputFirstName">Fullname</label>
                                    <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your full name"
                                           value="${sessionScope.USER.fullName}">
                                </div>
                            </div>

                            <div class="row gx-3 mb-3">

                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputOrgName">Password</label>
                                    <input class="form-control" id="inputOrgName" type="text" placeholder="Enter your new password"
                                           value="${sessionScope.USER.userPassword}">
                                </div>

                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address"
                                       value="${sessionScope.USER.userGmail}">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (phone number)-->
                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                    <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number"
                                           value="0933788350">
                                </div>

                            </div>
                            <!-- Save changes button-->
                            <button class="btn btn-primary" type="button">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="dialog overlay" id="my-dialog">
        <a href="#close-dialog" class="overlay-close"></a>
        <div id="close-dialog" class="dialog-body">
            <a href="#close-dialog" class="dialog-close-btn">&times;</a>
        </div>
    </div>


</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="FE/lib/easing/easing.min.js"></script>
<script src="FE/lib/waypoints/waypoints.min.js"></script>
<script src="FE/lib/counterup/counterup.min.js"></script>
<script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>
</html>