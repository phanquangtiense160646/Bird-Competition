<%-- 
    Document   : News
    Created on : Nov 7, 2023, 6:16:47 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>

        <!-- Custom fonts for this template-->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <jsp:include page="Menu.jsp"/>
        <!-- Page Wrapper -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">News Management</h1>
            <p class="mb-4">Quản lý tin tức <a target="_blank">
            </p>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">NEWS</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>News Id</th>
                                    <th>Name Of News</th>
                                    <th>Date</th>
                                    <th>Description</th>
                                    <th>Link News</th>
                                    <th>Id User</th>
                                    <th>Photo Path</th>
                                    <th>Delete</th>
                                    <th>Update</th>


                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>News Id</th>
                                    <th>Name Of News</th>
                                    <th>Date</th>
                                    <th>Description</th>
                                    <th>Link News</th>
                                    <th>Id User</th>
                                    <th>Photo Path</th>
                                    <th>Delete</th>
                                    <th>Update</th>

                                </tr>
                            </tfoot>
                            <tbody>
                            <form action="DispatchServlet" method="GET">
                                <c:set var="newsData" value="${sessionScope.NEWS}"/>
                                <c:if test="${not empty newsData}">
                                    <c:forEach var="news" items="${newsData}" >

                                        <tr>
                                            <td>${news.getIdNews()}
                                                <input type="hidden" name ="txtID" value="${news.getIdNews()}">
                                            </td>
                                            <td>
                                                <input type="text" name="txtNameOfNews" 
                                                       value="${news.getNameOfNews()}>">
                                            </td>
                                            <td>
                                                 <input type="text" name="txtDate" 
                                                        value="${news.getDate()}">
                                            </td>
                                            <td>
                                                 <input type="text" name="txtDescrip" 
                                                        value="${news.getDescription()}">
                                            </td>
                                            <td>
                                                <input type="text" name="txtLinkOfNews" 
                                                        value="${news.getLinkOfNews()}">
                                                
                                            </td>
                                            <td>${news.getIdUser()}</td>
                                            <td>
                                                 <input type="text" name="txtPhoto" 
                                                        value="${news.getPhoto()}">
                                            </td>
                                            <td>
                                                <c:url var="deleteLink" value="DispatchServlet">
                                                    <c:param name="btAction" value="DeleteNews"/>
                                                    <c:param name="txtID" value="${news.getIdNews()}"/>
                                                </c:url>
                                                <a href="${deleteLink}">Delete</a>
                                            </td>
                                            <td>
                                                <input type="submit" name="btAction" value="UpdateNews" />
                                            </td>
                                        </tr>


                                    </c:forEach>
                                </c:if>
                                <c:if test="${empty newsData}">
                                    <h1>Chưa có News!!!</h1>
                                </c:if>
                            </form>

                            </tbody>
                        </table>
                    </div>

                </div>

            </div>


        </div>

        <!-- /.container-fluid -->




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
