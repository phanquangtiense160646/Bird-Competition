<%-- 
    Document   : curentMatch
    Created on : Oct 24, 2023, 9:07:41 PM
    Author     : Danh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>

        <!-- Custom fonts for this template -->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="AdminPage/css/matchResult.css" rel="stylesheet">
        <link href="FE/css/toast.css" rel="stylesheet">


        <!-- Custom styles for this page -->
        <link href="AdminPage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <jsp:include page="Menu.jsp"/>


        <!-- Begin Page Content -->

        <c:set var="preparing" value="${sessionScope.PREPARING}"/>
        <div class="container-fluid">
            <h1 class="h3 mb-2 text-gray-800">Match Management</h1>
            <p class="mb-4">Quản lí Check-In<a target="_blank"></p>

            <c:if test="${not empty preparing}">

                <div class="container-fluid p-5">
                    <div class="mb-5 text-center">
                        <h1 class="display-3 text-uppercase mb-0">Thực hiện Check-in</h1>
                    </div>
                    <div class="tab-class text-center">
                        <ul class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase rounded-pill mb-5">
                            <li class="nav-item">
                                <a class="nav-link rounded-pill text-white active" data-bs-toggle="pill" href="#tab-1">các trận đấu sắp diễn ra hôm nay</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane fade show p-0 active">
                                <div class="row g-5 d-flex justify-content-center">

                                    <c:forEach var="scheduleDto" items="${preparing}" varStatus="counter">

                                        <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                            <div class="bg-dark rounded text-center py-5 px-3">
                                                <div style="height: 250px">


                                                    <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                        ${scheduleDto.getDateFormat()}</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                        ${scheduleDto.startTime} - ${scheduleDto.endTime} </p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                        điểm: ${scheduleDto.location}</p>
                                                    <p class="schedule-value text-uppercase text-primary">
                                                        ${scheduleDto.name}</p>
                                                </div>

                                                <p class="schedule-value text-uppercase text-secondary mb-0">
                                                    Loại chim: Chào mào</p>
                                                <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                    yêu cầu:</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">
                                                    ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                                <p class="schedule-value text-uppercase text-info mb-3">Hệ số:
                                                    ${scheduleDto.factor}</p>

                                                <p class="schedule-value text-uppercase text-secondary mb-0">
                                                    checked-in/ đã đăng kí:</p>
                                                <p class="text-uppercase text-primary mb-0">
                                                    ${scheduleDto.checkedIn}/${scheduleDto.currentPar}</p>
                                                    <c:if test="${!scheduleDto.isAfterTime(scheduleDto.startTime)}" >
                                                    <form action="PrepareCheckInServlet" method="post">
                                                        <input type="hidden" name="txtMatchId" value="${scheduleDto.id}">
                                                        <input type="submit" class="btn btn-primary px-5 mt-2" value="Check-in">
                                                        <!--<a href="<c:url value="/DispatchServlet?btAction=CheckIn"/>" class="btn btn-primary px-5 mt-2">Check-in</a>-->
                                                    </form>
                                                    <form action="CompleteCheckInServlet" method="post">
                                                        <input type="hidden" name="txtMatchId" value="${scheduleDto.id}">
                                                        <input type="submit" class="btn btn-primary px-5 mt-2" value="Hoàn tất Check-in">

                                                    </form>
                                                </c:if>
                                                <c:if test="${scheduleDto.isAfterTime(scheduleDto.startTime)}" >
                                                    <input type="submit" class="btn btn-secondary px-5 mt-2" value="Hết hạn check-in">
                                                </c:if>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty preparing}">
                <div class="container-fluid p-5">
                    <div class="mb-5 text-center">
                        <h2 class="text-uppercase mb-0">Không có trận đấu sắp diễn ra</h2>
                    </div>
                </div>
            </c:if>


            <!-- Manage Rule End -->


        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->





    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Your Website 2020</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->


</div>
<!-- End of Page Wrapper -->
<c:set var="msg" value="${requestScope.Message}" />
<h6 id="toastmes">${msg}</h6>
<div id="toast"></div>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="AdminPage/vendor/jquery/jquery.min.js"></script>
<script src="AdminPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="AdminPage/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="AdminPage/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="AdminPage/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="AdminPage/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="AdminPage/js/demo/datatables-demo.js"></script>
<script src="FE/js/completeCheckIn.js"></script>


</body>

</html>
