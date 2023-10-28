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
                    <c:set var="match" value="${requestScope.JOINER}" />

                    <div class="container-fluid">

                        <h1 class="h3 mb-2 text-gray-800">Update Match Result</h1>
                        <p class="mb-1">Cập nhật kết quả trận đấu <a target="_blank"></p>
                        <!--<button class="btn btn-primary btn-view px-5 mb-3" style="margin-top: 10px;">Xem thông tin Trận</button>-->
                        <c:if test="${not empty match}">
                            <div class="d-flex justify-content-center">
                                <form action="ScoringServlet" method="post">
                                    <div class="wrapper">
                                        <div class="list">
                                            <div class="list__header">
                                                <h1>Các chim tham gia trận này</h1>
                                            </div>
                                            <div class="list__body">
                                                <table class="list__table">
                                                    <tbody>
                                                        <!-- Loop -->
                                                        <c:forEach items="${match}" var="dto" varStatus="counter">
                                                            <tr class="list__row">
                                                                <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                                    <span class="list__value"></span>
                                                                    <input type="hidden" name="txtBirdID" value="${dto.birdID}">
                                                                    <input type="hidden" name="txtMatchId" value="${dto.matchID}">

                                                                    <small class="list__label"></small>
                                                                </td>
                                                                <td class="list__cell" style="color:#868E96;">
                                                                    <span class="list__value"> ${dto.birdName} </span>
                                                                    <small class="list__label">Chim</small>
                                                                </td>
                                                                <td class="list__cell" style="color:#868E96;">
                                                                    <span class="list__value">${dto.trainer}</span>
                                                                    <small class="list__label">Trainer</small>
                                                                </td>
                                                                <td class="list__cell" style="color:#868E96;">
                                                                    <span class="list__value">${dto.prePoint}</span>
                                                                    <small class="list__label">Điểm</small>
                                                                </td>

                                                                <td class="list__cell" style="color:#868E96;">
                                                                    <span class="list__value">     
                                                                        <input class="text-primary" style="width: 50px; text-align: center;" type="text" name="txtOder">

                                                                    </span>
                                                                    <small class="list__label">Thứ hạng</small>
                                                                </td>
                                                            </tr>
                                                            <!-- row -->

                                                            <!-- End of loop -->

                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>   

                            </div>
                            <div class="d-flex justify-content-center">
                                <!--<a href="" class="btn btn-primary px-5" >Xác nhận</a>-->

                                <input type="submit" class="btn btn-primary px-5 mt-2" value="Cập nhật" >

                            </div>
                        </div>
                        </form>
                    </c:if>
                    <c:if test="${empty match}">
                        <div class="container-fluid p-5">
                            <div class="mb-5 text-center">
                                <h6 class="display-3 mb-0">Không có chim nào tham gia trận đấu này</h6>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <a href='<c:url value="/DispatchServlet?btAction=Current"/>' class="btn btn-primary px-5" style="margin-top: 10px;">Quay lại</a>
                        </div>
                    </c:if>





                    <div id="schedule" class="schedule-overlay">
                        <div class="update-form col-lg-3 col-md-4 col-sm-6">
                            <div class="schedule-header" style="padding: 1rem;">
                                <div class="text-primary text-uppercase">Thông tin trận này</div>
                                <!-- <div class="button--close">X</div> -->
                                <button class="button--close">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                         stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                    <circle cx="12" cy="12" r="10" />
                                    <line x1="15" y1="9" x2="9" y2="15" />
                                    <line x1="9" y1="9" x2="15" y2="15" />
                                    </svg>
                                </button>
                            </div>

                            <div class="schedule-body d-flex justify-content-center"></div>
                        </div>

                    </div>
                    <!-- Class Timetable End -->
                    <c:set var="match" value="${requestScope.THIS_MATCH}" />
                    <script>
                        const cfmBtn = document.querySelectorAll(".btn-view");
                        const schedule = document.querySelector('.schedule-overlay');
                        const sidebarClose = () => {
                            schedule.classList.remove("is-open");
                        };

                        cfmBtn.forEach(buyBtn => {
                            buyBtn.addEventListener("click", function () {
                                schedule.classList.add("is-open");

                                const body = document.querySelector('.schedule-body');
                                body.innerHTML = '';

                                const newDriver = document.createElement('div');
                                newDriver.classList = 'update-result';

                                var date, time, place, tOC, tOB, registerNumber;

                                const win = this.dataset.win;
                                const lose = this.dataset.lose;

                                newDriver.innerHTML = `
        <div>
        <h6 class=" text-secondary mb-3 ml-3"> NGÀY: 23/1/2023</h6>
        <h6 class=" text-secondary mb-3 ml-3"> GIỜ: 8.00AM - 10.00AM</h6>
        <h6 class=" text-secondary mb-3 ml-3"> ĐỊA ĐIỂM: FPT</h6>
        <h5 class=" text-primary ml-3"> THI HÓT</h5>
        <p class=" text-secondary mb-0 ml-3">LOẠI CHIM: CHÀO MÀO</p>
        <p class=" text-secondary mb-0 ml-3" style="display: inline;">
            Số người đăng kí:
        <p class=" text-primary mb-0 ml-3" style="display: inline;"> 10/15</p>
        </p>
        <h6 class=" text-secondary mb-3 ml-3">Các chim tham gia:  
            <select>
                    <option value="" selected disabled>Xem</option>
                    <option value="">thanh font</option>
                    <option value="">huy lele</option>
                    <option value="">hi thuan</option>
                    <option value="">danh tran</option>
                    <option value="">kha kha</option>
                    <option value="">huy du</option>
            </select>    
                
        </div>
        `;


                                body.appendChild(newDriver);
                            })
                        })
                        const closeOverlayBtn = document.querySelector(".button--close");
                        closeOverlayBtn.addEventListener("click", sidebarClose);


                    </script>

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