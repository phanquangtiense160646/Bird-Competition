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

        <title>Account Management</title>

        <!-- Custom fonts for this template -->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="AdminPage/css/matchResult.css" rel="stylesheet">
        <link href="AdminPage/css/toast.css" rel="stylesheet">




        <!-- Custom styles for this page -->
        <link href="AdminPage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <jsp:include page="Menu.jsp"/>
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">Account Management</h1>
            <p class="mb-4">Quản lý tài khoản <a target="_blank">
            </p>
            <a href="AdminPage/adminsignup.jsp" class="btn btn-primary btn-user btn-block">
                Tạo tài khoản</a>
   
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary"></h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
<!--                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Gmail</th>
                                    <th>Role</th>-->
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Id Member</th>
                                    <th>Fullname</th>
                                    <th>Day of birth</th>
                                    <th>Country</th>
                                    <th>Phone</th>       
                                    <th>Gender</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
<!--                            <tfoot>
                                <tr>
                                    <th>Contest Id</th>
                                    <th>Name Of Contest</th>
                                    <th>Date Of Contest</th>
                                    <th>Location</th>
                                    <th>Factor</th>
                                    <th>Min Point</th>
                                    <th>Max Point</th>
                                    <th>Max Participant</th>
                                    <th>Participation Fee</th>
                                    <th>Status</th>
                                </tr>
                            </tfoot>-->
                            <tbody>
                                <c:set var="memberData" value="${sessionScope.ulist}"/>
                                <c:if test="${not empty memberData}">
                                    <c:forEach var="memberDto" items="${memberData}" >
                                        
                                            <tr>
                                            <form action="DispatchServlet">    
                                                <td>
                                                <input type="text" name="txtUsername"    
                                                       value="${memberDto.username}" readonly class="form-control">
                                                </td>
                                                
                                                <td>
                                                    <input type="text" name="txtPassword"
                                                    value="${memberDto.password}" class="form-control">
                                                </td>
                                                
                                                <td>
                                                    <input type="text" name="txtId"
                                                    value="${memberDto.getId()}" readonly class="form-control">
                                                </td>
                                                
                                                <td>
                                                    <input type="text" name="txtFullname"
                                                    value="${memberDto.getFullName()}" class="form-control">
                                                </td>
                                                    
                                                <td>
                                                    <input type="text" name="txtDayofbirth"
                                                    value="${memberDto.getDateOfBirth()}" readonly class="form-control">         
                                                </td>
                                                
                                                <td>
                                                    <input type="text" name="txtCountry"
                                                    value="${memberDto.getCountry()}" class="form-control">   
                                                </td>
                                                
                                                <td>
                                                    <input type="text" name="txtPhone"
                                                    value="${memberDto.getPhoneNumber()}">
                                                </td>
                                               
                                                <td>
                                                    <c:if test="${memberDto.getGender() == 1 }">
                                                        Nam
                                                    </c:if>
                                                    <c:if test="${memberDto.getGender() == 0 }">
                                                        Nữ
                                                    </c:if>
                                                        <c:if test="${memberDto.getGender() == null }">
                                                        Chưa xác định
                                                    </c:if>
                                                    
                                                </td>
                                                <td>
                                                <c:url var="deleteLink" value="/DispatchServlet?btAction=DeleteMember">
                                                    <c:param name="username" value="${memberDto.username}"/>
                                                </c:url>
                                                <a class="btn btn-primary mb-1" href="${deleteLink}">Delete</a>
<!--                                                <input class="btn btn-primary mb-1" type="submit" name="btAction" value="UpdateAccount" />-->
<button type="submit" name="btAction" value="UpdateAccount" class="btn btn-primary mb-1">Update</button>
                                                </td>
                                            
                                        </form>    
                                            
                                            </tr>
                                                    

                                    </c:forEach>
                                    </c:if>
                                    <c:if test="${ empty memberData}">
                                        Chua co du lieu
                                    </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

        <!-- /.container-fluid -->

    </div>
    <h6 id="toastmes">${requestScope.MES}</h6>
    <div id="toast">
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
<script src="AdminPage/js/manageSchedule.js"></script>


</body>

</html>
