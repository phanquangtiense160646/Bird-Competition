<%-- 
    Document   : userprofile
    Created on : Oct 22, 2023, 6:46:42 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html lang="en">
    <head>
        <style>

</style>
        <script src="FE/js/main.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
        <link href="FE/img/favicon.ico" rel="icon">
        
        <link href="FE/css/toast.css" rel="stylesheet">
        
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
                                        src="FE/img/manager.png"
                                        class="img-fluid img-thumbnail mt-4 mb-2"
                                        style="width: 150px; z-index: 1; margin-left: 10px;">
                                    
                                    
                                    

                                </div>

                                <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                    <h5 class="text-white">${sessionScope.USER.userName}</h5>
                                    <p>${sessionScope.USER.fullName}</p>
                                </div>
                            </div>
                            <div class=" pt-5 pl-4 text-black" style="background-color: #f8f9fa;">
                                <form action="#editprofile-dialog" style="z-index: 1;">
                                        <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                style="z-index: 0; margin-left: 17px;">
                                            Edit profile
                                        </button>
                                    </form>
                                <form action="DispatchServlet" style="z-index: 1;">
                                        <button class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                                style="z-index: 0; margin-left: 17px;" 
                                                name="btAction" value="MatchHistory">
                                            Match History
                                        </button>
                                </form>
                                <img src="FE/img/tt7.png" style="width: 50%; float: right; position: absolute; top: 200; right: -30;" />
                            </div>

                            <!--                Con chim-->
                            <div class="card-body p-4 text-black ">
                                <div class="mb-5">
                                    <p class="lead fw-normal mb-1">About</p>
                                    <div class="p-4" style="background-color: #f8f9fa;">
                                        <p class="font-italic mb-2">---</p>
                                        <p class="font-italic mb-1">Thích Chơi Chim</p>
                                        <p class="font-italic mb-1">${sessionScope.USER.userGmail}</p>
                                        <p class="font-italic mb-2">---</p>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <p class="lead fw-normal mb-0">Bird Category</p>
                                    <form action="DispatchServlet">
                                        <button class="mb-0 btn btn-outline-dark btn-primary" name="btAction" value="BirdList">Show all</button>
                                    </form>
                                    
                                </div>
                            <c:set var="count" value="0" />            
                            <c:set var="birdList" value="${sessionScope.OWN_BIRD}"/>
                            <c:if test="${not empty birdList}">                   
                                <c:forEach items="${birdList}" var="p" varStatus="loop"> 
                                    <c:if test="${count lt 4}">
                                       <c:if test="${loop.index % 2 == 0}">
                                        <c:set var="nextIndex" value="${loop.index + 1}" />

                                        <div class="row g-2">
                                            <div class="box col mb-5">
                                               
                                                <img src="FE/img/${p.photoPath}"
                                                     >
                                                <p class="birdname" style="font-weight: bold; text-align:center;">${p.birdName}</p>
                                            </div>
                                            <c:if test="${nextIndex <= birdList.size() - 1}">

                                                <div class="box col mb-5 ">
                                                   
                                                    <img src="FE/img/${birdList[nextIndex].photoPath}"
                                                         >
                                                    <p class="birdname" style="font-weight: bold; text-align:center;">${birdList[nextIndex].birdName}</p>
                                                </div>
                                            </c:if>
                                            <c:if test="${nextIndex > birdList.size() - 1}">
                                                <div class="box col mb-5"></div>
                                            </c:if>



                                        </c:if>

                                      <c:set var="count" value="${count + 1}" />
                                      </c:if>
                                    </c:forEach>
                                </c:if>    
                                <c:if test="${empty birdList}">
                                    <h2>
                                        Chưa có chim trong bộ sưu tập
                                    </h2>
                                </c:if>           
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            </div>
        </section>
         
<h6 id="toastmes">${msg}</h6>
<div id="toast"></div>


        

        <!-- Edit profile dialog  -->
        <div class="dialog overlay rounded" id="editprofile-dialog">
            <a href="#close-dialog" class="overlay-close"></a>
            <div id="close-dialog" class="dialog-body">
                <a href="#close-dialog" class="dialog-close-btn">&times;</a>
                <header class="dialog-content-header border-bottom">Chỉnh sửa thông tin cá nhân</header>



                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <form action="DispatchServlet" method="post" enctype="multipart/form-data" style="align-items: center">
                             <label for="fileInput" style="color: blue"><u class="">Choose a File</u></label>
                             <input type="file" id="fileInput" name="image">
                             <input type="submit" value="Add Image">
                         </form>
                        <form action="DispatchServlet" method="GET" >
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the
                                    site)</label>
                                <input class="form-control" type="hidden" name="txtUsername" 
                                       value="${sessionScope.USER.userName}"> 
                                 <input class="form-control" type="text" name="txtUsername" 
                                       value="${sessionScope.USER.userName}" readonly>
                            </div>
                             
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">

                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputFirstName">Fullname</label>
                                    <input class="form-control"  type="text" placeholder="Enter your full name"
                                           value="${sessionScope.USER.fullName}" name="txtFullname">
                                </div>
                            </div>

                            <div class="row gx-3 mb-3">

                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputOrgName">Password</label>
                                    <input class="form-control" type="text" placeholder="Enter your new password"
                                           value="${sessionScope.USER.userPassword}" name="txtPassword">
                                </div>

                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" type="email" placeholder="Enter your email address"
                                       value="${sessionScope.USER.userGmail}" name="txtGmail">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (phone number)-->
                                <div class="col-md-12">
                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                    <input class="form-control" type="tel" placeholder="Enter your phone number"
                                           value="${sessionScope.USER.phone}" name="txtPhone">
                                </div>

                            </div>
                            <!-- Save changes button-->
                            <div class="d-flex justify-content-center">
                                <input type="submit" value="Update Profile" name="btAction" class="btn btn-primary"/>
                            </div>
                            
                           
                        </form>
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
<script src="FE/js/updateprofile.js"></script>
</html>
