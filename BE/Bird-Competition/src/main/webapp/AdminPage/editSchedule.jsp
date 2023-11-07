<%-- 
    Document   : createSchedule
    Created on : Oct 28, 2023, 12:20:34 AM
    Author     : Admin
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

        <title>Create Schedule</title>

        <!-- Custom fonts for this template -->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
        <!-- <link href="AdminPage/css/matchResult.css" rel="stylesheet"> -->

        <!-- Custom styles for this page -->
        <link href="AdminPage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    </head>

    <body id="page-top">
        <jsp:include page="Menu.jsp"/>

        <!-- Begin Page Content -->
        <div class="row">
            <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
            <div class="col-lg-7">
                <div class="p-5">
                    <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">Tạo lịch thi đấu</h1>
                    </div>
                    <c:set var="data" value="${sessionScope.SCHEDULE_DATA}"/>
                    <form action='<c:url value="/DispatchServlet"/>' class="user">
                        <div class="form-group row">
                            <div class="col-sm-4 mb-3 mb-sm-0">
                                <label class="small mb-1">Ngày thi đấu:</label>
                                <input type="date" class="form-control form-control-user" id="datePickerId"
                                       value="${data.date}" name="date">
                                <c:set var="errors" value="${requestScope.CREATE_ERRORS}"/>
                                <c:if test="${not empty errors.dateErr}">
                                    <label class="small mb-1" style="color: red;">${errors.dateErr}</label>
                                </c:if>
                            </div>
                            <div class="col-sm-4">
                                <label class="small mb-1">Thời gian bắt đầu:</label>
                                <input type="time" class="form-control form-control-user" id="contestFactor"
                                       placeholder="Bắt đầu" value="${data.startTime}" name="sTime">
                                <c:if test="${not empty errors.sTimeErr}">
                                    <label class="small mb-1" style="color: red;">${errors.sTimeErr}</label>
                                </c:if>
                            </div>
                            <div class="col-sm-4">
                                <label class="small mb-1">Thời gian kết thúc:</label>
                                <input type="time" class="form-control form-control-user" id="contestFactor"
                                       placeholder="Kết thúc" value="${data.endTime}" name="eTime">
                                <c:if test="${not empty errors.eTimeErr}">
                                    <label class="small mb-1" style="color: red;">${errors.eTimeErr}</label>
                                </c:if>
                            </div>    


                        </div>
                        <div class="form-group">
                            <label class="small mb-1">Tên cuộc thi:</label>
                            <input type="text" class="form-control form-control-user" id="contestName"
                                   placeholder="Tên cuộc thi" value="${data.name}" name="txtContestName">
                            <c:if test="${not empty errors.contestNameErr}">
                                <label class="small mb-1" style="color: red;">${errors.contestNameErr}</label>
                            </c:if>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="small mb-1">Điểm tham gia tối thiểu:</label>
                                <input type="number" class="form-control form-control-user"
                                       id="minPoint" placeholder="min point" value="${data.minPoint}" name="txtminPoint">
                                <c:if test="${not empty errors.minPointErr}">
                                    <label class="small mb-1" style="color: red;">${errors.minPointErr}</label>
                                </c:if>
                            </div>
                            <div class="col-sm-6">
                                <label class="small mb-1">Điểm tham gia tối đa:</label>
                                <input type="number" class="form-control form-control-user"
                                       id="maxPoint" placeholder="max point" value="${data.maxPoint}" name="txtmaxPoint">
                                <c:if test="${not empty errors.maxPointErr}">
                                    <label class="small mb-1" style="color: red;">${errors.maxPointErr}</label>
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="small mb-1">Số lượng tham gia tối đa:</label>
                                <input type="number" class="form-control form-control-user"
                                       id="maxPar" placeholder="max participant" value="${data.maxPar}" name="txtmaxPar">
                                <c:if test="${not empty errors.maxParErr}">
                                    <label class="small mb-1" style="color: red;">${errors.maxParErr}</label>
                                </c:if>
                            </div>
                            <div class="col-sm-6">
                                <label class="small mb-1">Số lượng chim được phép tham gia:</label>
                                <input type="number" class="form-control form-control-user"
                                       id="maxBirdJoin" placeholder="max bird in a contest" value="${data.maxBird}" name="txtmaxBirdJoin">
                                <c:if test="${not empty errors.maxBirdInContestErr}">
                                    <label class="small mb-1" style="color: red;">${errors.maxBirdInContestErr}</label>
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="small mb-1">Phí tham gia:</label>
                                <input type="number" class="form-control form-control-user" id="fee"
                                       placeholder="Phí" value="${data.fee}" name="txtfee">
                                <c:if test="${not empty errors.feeErr}">
                                    <label class="small mb-1" style="color: red;">${errors.feeErr}</label>
                                </c:if>
                            </div>
                            <div class="col-sm-6">
                                <label class="small mb-1">Hệ số:</label>
                                <input type="number" class="form-control form-control-user" id="contestFactor"
                                       placeholder="Hệ số" value="${data.factor}" name="txtfactor">
                                <c:if test="${not empty errors.factorErr}">
                                    <label class="small mb-1" style="color: red;">${errors.factorErr}</label>
                                </c:if>
                            </div>
                        </div>
                        Chọn địa điểm tham gia: <select aria-label="chooseBird" name="cboBird">
                            <option selected disabled>Địa điểm</option>
                            <c:set var="locations" value="${sessionScope.LOCATION}"/>
                            <c:forEach var="location" items="${locations}">
                                <option ${data.locationId == location.locationId ? "selected":""} 
                                    value="${location.locationId}">${location.location}</option>
                            </c:forEach>   
                        </select>
                        <c:if test="${not empty errors.placeErr}">
                            <label class="small mb-1" style="color: red;">${errors.placeErr}</label>
                        </c:if>
                        <hr>
                        <input type="hidden" name="hidContestId" value="${data.id}" />
                        <button type="submit" value="editSchedule" class="btn btn-primary btn-user btn-block" name="btAction">
                            Chỉnh sửa lịch</button>
                    </form>

                </div>
            </div>
        </div>

        <!-- /.container-fluid -->

    </div>

    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Bird-Competition</span>
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
<script>
    datePickerId.min = new Date().toLocaleDateString('fr-ca');
</script>


</body>

</html>
