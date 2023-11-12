<%-- 
    Document   : paymenthistory
    Created on : Oct 27, 2023, 9:37:28 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Payment History</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="FE/css/payment.css">
    </head>
    <body style="background-image: url('FE/img/defaultpic.jpg'); background-repeat: no-repeat;
    background-size: cover; ">
        <div>
            <div class="wrapper rounded" style="background: rgba(0, 0, 0, 0.6);"> <nav class="navbar navbar-expand-lg navbar-dark dark d-lg-flex align-items-lg-start" style="background: rgba(0, 0, 0, 0);"> 
                <a class="navbar-brand" href="#">Transactions <p class="text-muted pl-1">Welcome to your transactions</p> </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button> 
                <div class="collapse navbar-collapse" id="navbarNav"> 
                    <ul class="navbar-nav ml-lg-auto"> 
<!--                        <li class="nav-item"> 
                            <a class="nav-link" href="#"><span class="fa fa-bell-o font-weight-bold"></span> 
                                <span class="notify">Notifications</span> </a> </li> -->
<!--                                <li class="nav-item "> <a href="#"><span class="fa fa-search"></span></a> 
                                    <input type="search" class="dark" placeholder="Search"> </li> -->
                    </ul> 
                </div> 
            </nav> 
        
            <div class="d-flex justify-content-between align-items-center mt-3"> 
                <ul class="nav nav-tabs w-75"> 
                    <li class="nav-item"> 
                        <a class="nav-link active" href="#history">History</a> 
                    </li> 
                    <li class="nav-item"> <a class="nav-link" href="contact.jsp">Reports</a> 
                    </li> 
                </ul> 
            </div> 
            <div class="table-responsive mt-3"> 
                <table class="table table-dark table-borderless" style="background: rgba(0, 0, 0, 0.6);"> 
                    <thead> 
                        <tr> 
                            <th scope="col">Activity</th> 
                            <th scope="col">Mode</th> 
                            <th scope="col">Date</th> 
                            <th scope="col" class="text-right">Amount</th> 
                        </tr> 
                    </thead> 
                    <tbody> 
                        <c:set var="payment" value="${sessionScope.OWN_PAYMENT}"/>
                        <c:if test="${not empty payment}">
                            <c:forEach items="${payment}" var="p">
                               <tr> 
                            <td scope="row"> <span class="fa mr-1"></span> ${p.getNameOfProducts()} </td> 
                            <td><span class="fa fa-regular fa-credit-card"></span></td> 
                            <td class="text-muted">${p.orderDate}</td> 
                            <td class="d-flex justify-content-end align-items-center"> 
                                <span class="fa mr-1"></span> ${p.price} </td> 
                        </tr> 
                            </c:forEach>
                        </c:if>
                        
                        
                    </tbody>
                </table> 
            </div> 
            <div class="d-flex justify-content-between align-items-center results"> <span class="pl-md-3"><b class="text-white"> </b></span>
                <div class="pt-3"> 
                    <nav aria-label="Page navigation example"> 
                        <ul class="pagination"> 
                            <li class="page-item">
                                 <a class="page-link" href="postLogin.jsp" aria-label="Previous"> 
                                     <span aria-hidden="true" class=" text-white">&lt;Home Page</span> </a> 
                            </li> 
                        </ul> 
                    </nav> 
                </div> 
            </div>
        </div>
        </div>
        
    </body>
</html>
