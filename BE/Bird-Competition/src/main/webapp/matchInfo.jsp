<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Match Info</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
              rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/style.css" rel="stylesheet">
        <link href="FE/css/matchInfo.css" rel="stylesheet">
        <link href="FE/css/toast.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="JspCommon/webheader.jsp"/>
        <div class="container-fluid bg-primary p-5 bg-hero mb-5">
            <div class="row py-5">
                <div class="col-12 text-center">
                    <h1 class="display-2 text-uppercase text-white mb-md-4">Lịch thi đấu</h1>
                    <!-- <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
            <a href="" class="btn btn-light py-md-3 px-md-5">Classes</a> -->
                </div>
            </div>
        </div>
        <!-- Hero End -->

        <c:set var="scheduleDto" value="${requestScope.SCHEDULE_DTO}"/>
        <c:set var="listBird" value="${requestScope.LIST_BIRD}"/>
        <!-- Class Timetable Start -->
        <div id="schedule" class="container-fluid p-5">
            <div class="mb-5 text-center">
                <h1 class="display-3 text-uppercase mb-3">Thông tin trận đấu đã diễn ra</h1>
                <h3 class="text-uppercase text-primary mb-0">${scheduleDto.name}</h3>
                <h3 class="text-uppercase mb-0">Ngày: ${scheduleDto.getDateFormat()}</h3>
                <h6 id="toastmes">${requestScope.MES}</h6>
            </div>
            <div class="tab-content">

            </div>
            <div class="mb-5 text-center">
                <div class="wrapper">
                    <div class="list">
                        <div class="list__header">
                            <h1>Điểm chim sau khi được cập nhật</h1>
                        </div>
                        <div class="list__body">
                            <table class="list__table">
                                <tbody>

                                    <!-- Loop -->
                                    <c:set var="mid" value="${(listBird.size() + 1) / 2}" />
                                    <tr class="list__row">
                                        <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Top</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Chim</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Trainer</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm thay đổi</small>
                                        </td>
                                        <td class="list__cell" style="color: black">
                                            <small class="list__label">Điểm sau trận</small>
                                        </td>
                                    </tr>
                                    <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                        <c:if test="${dto.getOrder() < mid}">
                                            <tr class="list__row">
                                                <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value"> ${dto.order} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 300px;">
                                                    <span class="list__value"> ${dto.birdName} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 200px;">
                                                    <span class="list__value">${dto.trainer}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value">${dto.prePoint}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="color: green;">+${dto.postPoint - dto.prePoint}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <!-- row -->

                                        <!-- End of loop -->

                                    </c:forEach>
                                    <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                        <c:if test="${dto.getOrder() == mid}">
                                            <tr class="list__row">
                                                <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                    <span class="list__value"></span>
                                                    <input type="hidden" name="txtBirdID" value="${dto.birdID}">
                                                    <input type="hidden" name="txtOrder" value="${dto.order}">
                                                    <input type="hidden" name="txtBefore" value="${dto.prePoint}">
                                                    <input type="hidden" name="txtAfter" value="${dto.postPoint}">

                                                    <small class="list__label"></small>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value"> ${dto.order} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 300px;">
                                                    <span class="list__value"> ${dto.birdName} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 200px;">
                                                    <span class="list__value">${dto.trainer}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value">${dto.prePoint}</span>
                                                </td>                                               
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="color: blue;">${dto.postPoint - dto.prePoint}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <!-- row -->

                                        <!-- End of loop -->

                                    </c:forEach>
                                    <c:forEach items="${listBird}" var="dto" varStatus="counter">
                                        <c:if test="${dto.getOrder() > mid}">
                                            <tr class="list__row" style=" width: 1000px;">
                                                <td class="list__cell d-none" style="background: #CED4DA; color:#868E96;">
                                                    <span class="list__value"></span>
                                                    <input type="hidden" name="txtBirdID" value="${dto.birdID}">
                                                    <input type="hidden" name="txtOrder" value="${dto.order}">
                                                    <input type="hidden" name="txtBefore" value="${dto.prePoint}">
                                                    <input type="hidden" name="txtAfter" value="${dto.postPoint}">

                                                    <small class="list__label"></small>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value"> ${dto.order} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 300px;">
                                                    <span class="list__value"> ${dto.birdName} </span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96; width: 200px;">
                                                    <span class="list__value">${dto.trainer}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value">${dto.prePoint}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="color: red;">${dto.postPoint - dto.prePoint}</span>
                                                </td>
                                                <td class="list__cell" style="color:#868E96;">
                                                    <span class="list__value" style="font-weight: bold;">${dto.postPoint}</span>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <!-- row -->

                                        <!-- End of loop -->

                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>  



                <a href='<c:url value="/DispatchServlet?btAction=schedule"/>' class="btn btn-primary">Quay lại</a>
            </div>


        </div>
        <jsp:include page="JspCommon/webfooter.jsp" />

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="FE/lib/easing/easing.min.js"></script>
        <script src="FE/lib/waypoints/waypoints.min.js"></script>
        <script src="FE/lib/counterup/counterup.min.js"></script>
        <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="FE/js/main.js"></script>
        <script src="FE/js/schedule.js"></script>
    </body>
</html>
