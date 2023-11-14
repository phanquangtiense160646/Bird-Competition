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

        <title>Location Management</title>

        <!-- Custom fonts for this template -->
        <link href="AdminPage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="AdminPage/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="AdminPage/matchResult.css" rel="stylesheet">
        <link href="AdminPage/toast.css" rel="stylesheet">




        <!-- Custom styles for this page -->
        <link href="AdminPage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <jsp:include page="Menu.jsp"/>
       <!-- Page Wrapper -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">News Management</h1>
            <p class="mb-4">Quản lý tin tức <a target="_blank">
            </p>
            
            <a href="AdminPage/addNews.jsp" class="btn btn-primary btn-user btn-block">

                Thêm tin tức</a>
            
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
                                    <th>Photo Path</th>
                                    <th>Option</th>
                                    


                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>News Id</th>
                                    <th>Name Of News</th>
                                    <th>Date</th>
                                    <th>Description</th>
                                    <th>Link News</th>
                                    <th>Photo Path</th>
                                    <th>Option</th>
                                   

                                </tr>
                            </tfoot>
                            
                            <tbody>
                            


                                <c:set var="newsData" value="${sessionScope.NEWS}"/>
                                <c:if test="${not empty newsData}">
                                    <c:forEach var="news" items="${newsData}" >
                                    
                                        
                                        <tr>
                                    <form action="DispatchServlet">
                                        <td>${news.getIdNews()}
                                                <input class="form-control" type="hidden" name ="txtID" value="${news.getIdNews()}">
                                            </td>
                                            <td>
                                                <input class="form-control" type="text" name="txtNameOfNews" 
                                                       value="${news.getNameOfNews()}">
                                            </td>
                                            <td>
                                                <input class="form-control" type="date" name="txtDate" 
                                                       value="${news.getDate()}">
                                            </td>
                                            <td>
                                                <input class="form-control" type="text" name="txtDescrip" 
                                                       value="${news.getDescription()}">
                                            </td>
                                            <td>
                                                <input class="form-control" type="text" name="txtLinkOfNews" 
                                                       value="${news.getLinkOfNews()}">

                                            </td>
                                            <td>
                                                <input class="form-control" type="text" name="txtPhoto" 
                                                       value="${news.getPhoto()}">
                                            </td>
                                            <td>
                                                <c:url var="deleteLink" value="DispatchServlet">
                                                    <c:param name="btAction" value="DeleteNews"/>
                                                    <c:param name="txtID" value="${news.getIdNews()}"/>
                                                </c:url>
                                                <a class="btn btn-primary mb-1" href="${deleteLink}">Delete</a>
                                                <input class="btn btn-primary mb-1" type="submit" name="btAction" value="Update" />
                                            </td>
                                            
                                    </form>
                                            
                                        </tr>
                                    
                                        


                                    </c:forEach>
                                </c:if>
                                <c:if test="${empty newsData}">
                                    <h1>Chưa có News!!!</h1>
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
