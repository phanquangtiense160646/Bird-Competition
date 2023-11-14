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

        <title>Create Account</title>

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/matchResult.css" rel="stylesheet"> 

        <!-- Custom styles for this page -->
        <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    </head>

    <body id="page-top">
        <jsp:include page="Menu.jsp"/>

        <!-- Begin Page Content -->
        <div class="row">
            <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
            <div class="col-lg-7">
                <div class="p-5">
                    <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">Tạo tài khoản</h1>
                    </div>
                    <form action='<c:url value="/DispatchServlet?btAction=AdminSignUp"/>' method="post">

                        <div class="form-group">
                            <label class="small mb-1">Username:</label>
                            <input type="text" class="form-control form-control-user" 
                                   name="txtUsername" placeholder="Input username">
                            <label class="small mb-1">Password:</label>
                            <input type="password" class="form-control form-control-user" 
                                   placeholder="Input password" name="txtPassword">

                            <label class="small mb-1">Confirm Password:</label>
                            <input type="password" class="form-control form-control-user" id="contestName"
                                   placeholder="Confirm Password" name="">
                            <label class="small mb-1">Role:</label>
                            <select id="" name="txtRole" class="form-control ">
                                <option value="3">Staff</option>
                                <option value="2">Manager</option>
                                <option value="1">Admin</option>
                                
                            </select>
                        </div>

                        <hr>
                        <c:set var="errors" value="${requestScope.CREATE_ERRORS}"/>
                        <span style="color: red;">${errors.usernameIsExisted}</span>
                        <button type="submit" class="btn btn-primary btn-user btn-block">
                            Đăng ký</button>
                        
                        <a href="javascript:history.back()" class="btn btn-secondary btn-user btn-block">
                            Quay lại
                        </a>
                        
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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>



</body>

</html>
