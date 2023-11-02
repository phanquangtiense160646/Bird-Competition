<%-- Document : MatchResult Created on : Oct 24, 2023, 10:35:56 PM Author : Danh --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Bird Management</title>

        <!-- Custom fonts for this template -->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="FE/css/style.css" rel="stylesheet">
        <link href="FE/css/leaderboard.css" rel="stylesheet">
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
        <!--<link href="AdminPage/css/matchResult.css" rel="stylesheet">-->




        <!-- Custom styles for this page -->
        <link href="AdminPage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <jsp:include page="Menu.jsp"/>

        <!-- Begin Page Content -->
        <c:set var="checkin" value="${requestScope.CHECKIN}" />

        <div class="container-fluid" style="height: 500px;">

            <h1 class="h3 mb-2 text-gray-800">Update Match Result</h1>
            <p class="mb-1">Cập nhật kết quả trận đấu <a target="_blank"></p>
            <!--<button class="btn btn-primary btn-view px-5 mb-3" style="margin-top: 10px;">Xem thông tin Trận</button>-->
            <div>
                <form action="DispatchServlet" method="post">
                    <input type="hidden" name="txtMatchId" value="${param.txtMatchId}">

                    <div class="d-flex justify-content-center mb-5">
                        <input type="text" class="form-control bg-light border-0 small w-50"
                               name="txtCode" value="${param.txtCode}" placeholder="Nhập Check-in Code">

                        <button class="btn btn-primary" type="submit" value="CheckCode" name="btAction">
                            Check
                        </button>
                    </div>
                </form>
            </div>
            <c:set var="searchValue" value="${param.txtCode}" /> 
            <c:if test="${not empty searchValue}">
                <c:if test="${not empty checkin}">
                    <div class="d-flex justify-content-center">
                        <form action="" method="post">
                            <div class="wrapper">
                                <div class="list">
                                    <!--<div class="list__header">
                                    <h1>Các chim tham gia trận này</h1>
                                </div>-->
                                    <div class="list__body">
                                        <table class="list__table">
                                            <tbody>
                                                <!-- Loop -->
                                                <tr class="list__row">
                                                    <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                        <span class="list__value"></span>
                                                        <input type="hidden" name="txtBirdID" value="">

                                                        <small class="list__label"></small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value"> ${checkin.birdName} </span>
                                                        <small class="list__label">Chim</small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value">${checkin.trainer}</span>
                                                        <small class="list__label">Trainer</small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <span class="list__value">${checkin.prePoint}</span>
                                                        <small class="list__label">Điểm</small>
                                                    </td>
                                                    <td class="list__cell" style="color:#868E96;">
                                                        <c:if test="${checkin.checkIn == true}"> 
                                                            <%--<c:set var="status" value="Đã check-in" />--%>
                                                            <span class="list__value">Đã check-in</span>
                                                        </c:if>
                                                        <c:if test="${checkin.checkIn == false}"> 
                                                            <%--<c:set var="status" value="Đã check-in" />--%>
                                                            <span class="list__value">Chưa check-in</span>
                                                        </c:if>
                                                        <small class="list__label">Trạng thái Check-in</small>
                                                    </td>
                                                </tr>
                                                <!-- row -->

                                                <!-- End of loop -->


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>   
                        </form>

                    </div>
                    <div class="d-flex justify-content-center">

                        <!--<input type="submit" class="btn btn-primary px-5 mt-2" value="Cập nhật" >-->
                        <form action="ConfirmCheckInServlet" method="post">
                            <input type="hidden" value="${checkin.birdID}" name="txtId" >
                            <input type="submit" class="btn btn-primary px-5 mt-2" value="Xác nhận">

                        </form>

                        <form action="CheckInServlet" method="post">
                            <input type="hidden" name="txtMatchId" value="${param.txtMatchId}">
                            <input type="submit" class="btn btn-primary px-5 mt-2" value="Quay lại">

                        </form>


                    </div>
                </div>

            </c:if>
            <c:if test="${empty checkin}">
                <div class="container-fluid p-5">
                    <div class="mb-5 text-center">
                        <h6 class="display-3 mb-0">Check-in code không hợp lệ</h6>
                    </div>
                </div>
                <div class="d-flex justify-content-center">
                    <a href='<c:url value="/DispatchServlet?btAction=Current"/>' class="btn btn-primary px-5" style="margin-top: 10px;">Quay lại</a>
                </div>
            </c:if>                 
        </c:if>






        <!-- Class Timetable End -->


        <script>
            $(document).ready(function () {
                $('.js-select2').select2();
            });
        </script>
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
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
            </div>
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

</body>

</html>