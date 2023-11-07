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
                <div class="row d-flex justify-content-center align-items-center h-100 ">
                    <div class="col col-lg-9 col-xl-7">
                        <div class="card" style="background-image: url('FE/img/formbg.jpg'); background-repeat: no-repeat;
                                                                            background-size: cover;">
                            
                            
                            <div class="card-body p-4 text-black" style="background: rgba(0, 0, 0, 0.6);"    >
                                
                                <div class="mb-5 mt-5"  >

                                    <span class="centered-text">
                                        <p class="lead fw-normal mb-1 text-white">Add New Bird</p>
                                    </span>
                                    
                                    
                                    
                                    <div class="container-xl px-4 mt-4" > 

                                        <hr class="mt-0 mb-4">
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <!-- Account details card-->
                                                <div class="card mb-4 " style="background-color: rgba(0, 0, 0, 0.4);">
                                                    <div class="card-header text-white">New Bird Details</div>
                                                    <div class="card-body">
                                                        
                                                        
                                                        <form action="DispatchServlet" >
                                                            
                                                            <!-- Form Group (birdname)-->
                                                            <div class="mb-3">
                                                                <label class="small mb-1 text-white" for="inputBirdname">Tên chim</label>
                                                                <input class="form-control" type="text" placeholder="Nhập tên chim"
                                                                       name="birdName">
                                                            </div>
                                                            <!-- Form Row-->
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Species)-->
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1 text-white" for="inputSpecies">Loài chim</label>
                                                                    <input class="form-control" id="inputSpecies" type="text" placeholder="Nhập giống chim"
                                                                           value="Chào Mào" name="birdSpecie" style="background-color: white" readonly>
                                                                </div>
                                       

                                                            </div>
                                                            <div class="row gx-3 mb-3">
                                                                
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1 text-white" for="inputSpecies">Giới tính</label>
<!--                                                                    <input class="form-control" id="inputSpecies" type="text" placeholder="Nhập giống chim"
                                                                           value="" name="birdGender" >-->
                                                                    <select name="birdGender" class=""
                                                                            style="display:block;width:100%;padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#686A6F;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;border-radius:.25rem;transition:border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out">
                                                                        <option value="True">Đực</option>
                                                                        <option value="False">Cái</option>
                                                                    </select>
                                                                </div>
                                       

                                                            </div>
                                                            
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Species)-->
                                                                <div class="col-md-12">
                                                                    <label class="small mb-1 text-white" for="inputSpecies">Thông tin khác</label>
                                                                    <input class="form-control" id="inputSpecies" type="text" placeholder="Thông tin khác"
                                                                           name="description">
                                                                </div>
                                       

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
                                                                <button class="btn btn-outline-light text-white" data-mdb-ripple-color="dark" onclick="customNavigate()">
                                                                    Back
                                                                </button>

                                                                <script>
                                                                    function customNavigate() {
                                                                        window.history.back();
                                                                    }
                                                                </script>

                                                                <button class="btn btn-outline-light text-white" data-mdb-ripple-color="dark" value="AddBird" name="btAction">
                                                                    Add
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                                
                                                </div>
                                            </div>
                                                                
                                        </div>
                                    </div>
                                </div>
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
