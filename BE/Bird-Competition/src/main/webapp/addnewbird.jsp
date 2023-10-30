<%-- 
    Document   : addnewbird
    Created on : Oct 21, 2023, 10:42:07 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
        <script src="FE/js/main.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Bird</title>
        <link href="FE/img/favicon.ico" rel="icon">
        <link rel="stylesheet" href="FE/css/toast.css">
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

        <style>
            .centered-text {
                display: flex;
                justify-content: center;
            }
        </style>
    </head>

    <body class="">
        <jsp:include page="JspCommon/webheader.jsp"/>
        <section class="h-25 gradient-custom-2">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-9 col-xl-7">
                        <div class="card">
                            <div class="rounded-top text-white d-flex flex-row" style="background-color: #000000; height:200px;">
                                <div class="ms-4 mt-5 d-flex flex-column profile-pic" style="width: 150px;">

                                    <div class="edit-pic">
                                        <form action="upload.php" method="post" enctype="multipart/form-data">
                                            <label for="fileToUpload" class=" mt-4 mb-2">
                                                <div class="profile-pic">
                                                    <img
                                                        src="https://images.dolenglish.vn/rs:auto:::0/w:1440/q:70/aHR0cHM6Ly9zdWlqbTljbG91b2JqLnZjZG4uY2xvdWQvUFVCTElDL01FRElBLzFiNTFmNjI4LWNmNTktNDg5MS1iZGIyLWQ3M2MwODcxOGIwMi5qcGc="
                                                        class="img-fluid img-thumbnail mb-2" style="width: 150px; height: 140px; margin-left: 10px;">
                                                    <span class="glyphicon glyphicon-camera"></span>
                                                    <span>Change Image</span>
                                                </div>
                                            </label>
                                            <input type="File" name="fileToUpload" id="fileToUpload">
                                        </form>
                                    </div>



                                    <!-- <img
                                      src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/331044364_1135565673791935_1693572774874518896_n.jpg?stp=c0.0.241.240a_dst-jpg_p240x240&_nc_cat=104&ccb=1-7&_nc_sid=fe8171&_nc_ohc=TXcwpKt4QK0AX_9toxW&_nc_ht=scontent.fsgn2-5.fna&_nc_e2o=s&oh=00_AfD0Xd7axgyl8Ex23jGXKvXEQGNbysWHsZ3zx9ymtvlsdQ&oe=652637DB"
                                      alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                                      style="width: 150px; z-index: 1; margin-left: 10px;"> -->


                                    <!--                                    <button type="button" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                                                style="z-index: 1; margin-left: 17px;">
                                                                            View Profile
                                                                        </button>-->


                                    <input id="file" type="file" onchange="loadFile(event)" />
                                </div>
                                <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                    <h5 style="color: #f8f9fa;"></h5>
                                    <p></p>
                                </div>
                            </div>
                            <div class="p-4 text-black" style="background-color: #f8f9fa;">
                                <!-- <div class="d-flex justify-content-end text-center py-1">
                                  <div>
                                    <p class="mb-1 h5">100</p>
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
                                </div> -->
                            </div>
                            <div class="card-body p-4 text-black">
                                <div class="mb-5">

                                    <span class="centered-text">
                                        <p class="lead fw-normal mb-1">Add New Bird</p>
                                    </span>


                                    <div class="container-xl px-4 mt-4">

                                        <hr class="mt-0 mb-4">
                                        <div class="row">
                                            <div class="col-xl-12 border-bottom">
                                                <!-- Account details card-->
                                                <div class="card mb-4">
                                                    <div class="card-header">New Bird Details</div>
                                                    <div class="card-body">
                                                        <form action="DispatchServlet">
                                                            <!-- Form Group (birdname)-->
                                                            <div class="mb-3">
                                                                <label class="small mb-1" for="inputBirdname">Tên chim</label>
                                                                <input class="form-control" type="text" placeholder="Nhập tên chim"
                                                                       name="birdName">
                                                            </div>
                                                            <!-- Form Row-->
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Species)-->
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1" for="inputSpecies">Loài chim</label>
                                                                    <input class="form-control" id="inputSpecies" type="text" placeholder="Nhập giống chim"
                                                                           value="" name="birdSpecie">
                                                                </div>
                                                                <!--                                                                 Form Group (BirdAge)-->
                                                                <!--                                                                <div class="col-md-6">
                                                                                                                                    <label class="small mb-1" for="inputBirdAge">ID</label>
                                                                                                                                    <input class="form-control" id="inputBirdAge" type="text" placeholder="Nhập ID chim (for example: B00)"
                                                                                                                                           value="" name="birdId">
                                                                                                                                </div>-->

                                                            </div>

                                                            <div class="row gx-3 mb-3">

                                                                <div class="col-md-12">

                                                                    <input class="form-control" type="hidden" name="idMember" value="${sessionScope.USER.idMember}">
                                                                </div>

                                                                <!--                                                                <div class="col-md-6">
                                                                                                                                    <label class="small mb-1" for="inputHealStatus">Tình trạng sức khỏe</label>
                                                                                                                                    <input class="form-control" id="inputHealStatus" type="text"
                                                                                                                                           placeholder="Nhập tình trạng sức khỏe" value="">
                                                                                                                             </div>-->
                                                            </div>
                                                            <!--                                                             Form Group (CompetitionHistory)
                                                                                                                        <div class="mb-3">
                                                                                                                            <label class="small mb-1" for="inputCompetitionHistory">Lịch sử thi đấu (nếu có)</label>
                                                                                                                            <input class="form-control" id="inputCompetitionHistory" type="text"
                                                                                                                                   placeholder="Nhập lịch sử đấu" value="">
                                                                                                                        </div>
                                                            
                                                                                                                         Form Group (OtherInfo)
                                                                                                                        <div class="mb-3">
                                                                                                                            <label class="small mb-1" for="inputOtherInfo">Thông tin khác (nếu có)</label>
                                                                                                                            <input class="form-control" id="inputOtherInfo" type="text"
                                                                                                                                   placeholder="Nhập thông tin khác" value="">
                                                                                                                        </div>-->

                                                            <!-- Save changes button-->

                                                            <div class="d-flex justify-content-between">
                                                                <button class="btn btn-outline-dark" data-mdb-ripple-color="dark" onclick="customNavigate()">
                                                                    Back
                                                                </button>

                                                                <script>
                                                                    function customNavigate() {
                                                                        window.history.back();
                                                                    }
                                                                </script>

                                                                <button class="btn btn-outline-dark" data-mdb-ripple-color="dark" value="AddBird" name="btAction">
                                                                    Add
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </section>
                                    <h6 id="toastmes">${msg}</h6>
                                    <div id="toast"></div>



                                    </body>
                                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                                    <script src="FE/lib/easing/easing.min.js"></script>
                                    <script src="FE/lib/waypoints/waypoints.min.js"></script>
                                    <script src="FE/lib/counterup/counterup.min.js"></script>
                                    <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>
                                    <script src="FE/js/addnewbird.js"></script>
                                    <script src="FE/js/addbird.js"></script>   

                                    </html>
