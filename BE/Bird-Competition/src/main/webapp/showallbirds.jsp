<%-- 
    Document   : showallbirds
    Created on : Oct 29, 2023, 8:29:33 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
        <script src="FE/js/main.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
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
                            
                            <div class="text-center h1 fw-bold" style="padding-top: 20px;">
                                <p class="fs-1 lead fw-normal mb-20">Bird Category</p>
                            </div>
                            
                            <c:set var="birdList" value="${sessionScope.OWN_BIRD}"/>
                            <c:if test="${not empty birdList}">                   
                                <c:forEach items="${birdList}" var="p" varStatus="loop"> 
                                    <c:if test="${loop.index % 2 == 0}">
                                        <c:set var="nextIndex" value="${loop.index + 1}" />

                                        <div class="row g-2">
                                            <div class="box col mb-5">
                                                <div class="imghover">
                                                    <form action="DispatchServlet">
                                                        <input type="hidden" name="txtBirdID" value="${p.birdID}" />
                                                        <button class="btn" name="btAction" value="BirdProfile">Thông Tin</button>
                                                        
                                                    </form>
                                                </div>
                                                <img src="FE/img/${p.photoPath}">
                                                <p class="birdname" style="font-weight: bold; text-align:center;">${p.birdName}</p>
                                                
                                            </div>
                                            <c:if test="${nextIndex <= birdList.size() - 1}">

                                                <div class="box col mb-5 ">
                                                    <div class="imghover">
                                                        <form action="DispatchServlet">
                                                            <input type="hidden" name="txtBirdID" value="${birdList[nextIndex].birdID}" />
                                                            <button class="btn" name="btAction" value="BirdProfile">Thông Tin</button>
                                                        
                                                            
                                                        </form>
                                                    </div>
                                                    <img src="FE/img/${birdList[nextIndex].photoPath}">
                                                    <p class="birdname" style="font-weight: bold; text-align:center;">${birdList[nextIndex].birdName}
                                                    </p>
                                                </div>
                                            </c:if>
                                            <c:if test="${nextIndex > birdList.size() - 1}">
                                                <div class="box col mb-5"></div>
                                            </c:if>



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
        </section>
    </body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="FE/lib/easing/easing.min.js"></script>
<script src="FE/lib/waypoints/waypoints.min.js"></script>
<script src="FE/lib/counterup/counterup.min.js"></script>
<script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>
</html>

