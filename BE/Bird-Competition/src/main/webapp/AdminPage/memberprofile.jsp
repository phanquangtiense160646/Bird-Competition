<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>

    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bird Profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="img/favicon.ico" rel="icon">

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
        <link href="FE/css/deletemodal.css" rel="stylesheet">

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
                                        src="FE/img/${sessionScope.MEMBER.photoPath}"
                                        alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                                        style="width: 150px; z-index: 1; margin-left: 10px;"> 
                                    
                                    



                                </div>
                                <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                    <h5 style="color: #f8f9fa;"></h5>
                                    <p></p>
                                </div>
                            </div>




                            <div class="p-4 text-black" style="background-color: #f8f9fa;">
                                

                                <!--                                 <form action="" style="z-index: 1; padding-top: 20px; padding-left:17px">
                                                                                <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                                                        style="z-index: 0; margin-left: 17px;">
                                                                                    Xóa Chim
                                                                                </button>
                                                                    </form>-->







<!--                                <div class="d-flex justify-content-end text-center py-1">
                                    <div>
                                        <p class="mb-1 h5">${sessionScope.MEMBER.win + sessionScope.MEMBER.lose + sessionScope.MEMBER.tie}</p>
                                        <p class="small text-muted mb-0">Total Match</p>
                                    </div>
                                    <div class="px-3">
                                        <p class="mb-1 h5">${sessionScope.MEMBER.win}</p>
                                        <p class="small text-muted mb-0">Win</p>
                                    </div>
                                    <div>
                                        <p class="mb-1 h5">${sessionScope.MEMBER.lose}</p>
                                        <p class="small text-muted mb-0">Lose</p>
                                    </div>
                                    <div>
                                        <p class="mb-1 h5 ml-3">${sessionScope.MEMBER.tie}</p>
                                        <p class="small text-muted mb-0 ml-3">Tie</p>
                                    </div>
                                </div>-->
                            </div>
                            <div class="card-body p-4 text-black">
                                <div class="mb-5">

                                    <span class="centered-text">
                                        <p class="lead fw-normal mb-1">MEMBER Profile</p>
                                    </span>


                                    <div class="container-xl px-4 mt-4">

                                        <hr class="mt-0 mb-4">
                                        <div class="row">
                                            <div class="col-xl-12 border-bottom">
                                                <!-- Account details card-->
                                                <div class="card mb-4">
                                                    <div class="card-header"></div>
                                                    <div class="card-body">
                                                        <form action="UploadPhotoServlet" method="POST" enctype="multipart/form-data">
                                                             <div style="mb-5">
                                                            <input type="hidden" name="memberID" value="${sessionScope.MEMBER.memberId}" />
                                                             <input type="file" name="image" class="form-control">
                                                             <input class="btn border mt-3 mb-3" type="submit" value="Cập Nhật">
                                                             <input type="hidden" name="txtMemberID" value="${sessionScope.MEMBER.memberId}" />
                                                             </div>
                                                        </form>
                                                        <form action="DispatchServlet">
                                                            
                                                            
                                                       
                                                           
                                
                                                            <!-- Form Group (birdname)-->
                                                            <div class="mb-3">
                                                                <label class="small mb-1" for="inputMembername">Tên </label>
                                                                <input class="form-control" id="inputFullname" type="text"
                                                                       value="${sessionScope.MEMBER.fullname}" readonly>
                                                            </div>
                                                            <!-- Form Row-->
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Species)-->
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1" for="inputSpecies">Ngày tháng năm sinh</label>
                                                                    <input class="form-control" id="inputDayOfBirth" type="text" 
                                                                           value="${sessionScope.MEMBER.dateofbirth}" readonly>
                                                                </div>

                                                            </div>
                                                            <!-- Form Row        -->
                                                            <div class="row gx-3 mb-3">
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1">Khu vực</label>
                                                                    <input class="form-control" id="inputCountry" type="text" 
                                                                           value="${sessionScope.MEMBER.country}" readonly>
                                                                </div>
                                                            </div>
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Gender)-->
                                                                <div class="col-md-6">
                                                                    <label class="small mb-1" for="inputGender">Số điện thoại</label>
                                                                    <input class="form-control" id="inputPhone" type="text"
                                                                           value="${sessionScope.MEMBER.phone}" readonly>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="small mb-1" for="inputGender">Giới tính</label>
                                                                    <input class="form-control" type="text"
                                                                    value="${sessionScope.MEMBER.gender}"  readonly>  
                                                                </div>
                                                            </div>

                                                            <!-- Form Group (CompetitionHistory)-->
                                                            <!--                            <div class="mb-3">
                                                                                          <label class="small mb-1" for="inputCompetitionHistory">Được Thêm Vào Ngày</label>
                                                                                          <input class="form-control" id="inputCompetitionHistory" type="date"
                                                                                            placeholder="Nhập lịch sử đấu" value="" readonly>
                                                                                        </div>-->

                                                            <!-- Form Group (OtherInfo)-->

        

                                                            <input type="hidden" value="${sessionScope.MEMBER.birdID}" />
                                                            <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                                    style="z-index: 0; " name="btAction" value="DeleteMember">
                                                                    Xóa Chim
                                                            </button>
                                                        </form>

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
                        <script src="/UserProfile/addbird.js"></script>
                        <script src="FE/js/confirm.js"></script>
                        </html>
