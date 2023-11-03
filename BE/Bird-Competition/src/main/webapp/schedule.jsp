<%-- Document : schedule Created on : Oct 19, 2023, 5:00:00 PM Author : Admin --%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Schedule</title>
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
                <link href="FE/css/Schedule.css" rel="stylesheet">
                <link href="FE/css/toast.css" rel="stylesheet">
            </head>

            <body>

                <jsp:include page="JspCommon/webheader.jsp" />
                <!-- Hero Start -->
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


                <!-- Class Timetable Start -->
                <div id="schedule" class="container-fluid p-5">
                    <div class="mb-5 text-center">
                        <h5 class="text-primary text-uppercase">Lịch thi đấu</h5>
                        <h1 class="display-3 text-uppercase mb-0">các trận đấu sắp tới</h1>
                        <h6 id="toastmes">${requestScope.MES}</h6>
                    </div>
                    <div class="tab-class text-center">
                        <ul
                            class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase rounded-pill mb-5">
                            <li class="nav-item">
                                <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-0">Đã diễn
                                    ra</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-1">Đang
                                    diễn ra</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link rounded-pill text-white active" data-bs-toggle="pill"
                                    href="#tab-2">Sắp diễn ra</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-0" class="tab-pane fade show p-0">
                                <div class="row g-5">
                                    <c:set var="scheduleData" value="${sessionScope.SCHEDULE}" />
                                    <c:if test="${not empty scheduleData}">
                                        <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                            <c:if test="${scheduleDto.statusOfContest == 4}">
                                                <form action="ViewMatchInfoServlet">
                                                    <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                                        <div class="bg-hero rounded text-center py-5 px-3">
                                                            <p class="schedule-value text-uppercase text-info mb-3">Hệ
                                                                số: ${scheduleDto.factor}</p>
                                                            <p class="schedule-value text-uppercase text-light mb-3">
                                                                Ngày: ${scheduleDto.getDateFormat()}</p>
                                                            <p class="schedule-value text-uppercase text-light mb-3">
                                                                Giờ: 2.00am - 5.00am</p>
                                                            <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                                điểm: ${scheduleDto.location}</p>
                                                            <p class="schedule-value text-uppercase text-primary">
                                                                ${scheduleDto.name}</p>
                                                            <p
                                                                class="schedule-value text-uppercase text-secondary mb-0">
                                                                Loại chim: Chào mào</p>
                                                            <p class="schedule-value text-uppercase text-light mb-0">
                                                                Điểm yêu cầu:</p>
                                                            <p class="schedule-value text-uppercase text-light mb-3">
                                                                ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                                            <p class="schedule-value text-uppercase text-light mb-0">Phí
                                                                đăng kí(VND):</p>
                                                            <p class="schedule-value text-uppercase text-light mb-3">
                                                                ${scheduleDto.fee}</p>
                                                            <p class="schedule-value text-uppercase text-secondary mb-0"
                                                                style="display: inline;">
                                                                số người đăng kí:
                                                                <span class="text-uppercase text-primary mb-0"
                                                                    style="display: inline;">
                                                                    10/15</span>
                                                            </p>
                                                            <input type="hidden" name="hiddenContestId"
                                                                value="${scheduleDto.id}" />
                                                            </br><button class="btn btn-primary btn-viewInfo px-5"
                                                                style="margin-top: 10px;">Xem thông tin</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                            <div id="tab-1" class="tab-pane fade show p-0">
                                <div class="row g-5">
                                    <c:set var="scheduleData" value="${sessionScope.SCHEDULE}" />
                                    <c:if test="${not empty scheduleData}">
                                        <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                            <c:if test="${scheduleDto.statusOfContest == 3}">

                                                <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                                    <div class="bg-hero rounded text-center py-5 px-3">
                                                        <p class="schedule-value text-uppercase text-info mb-3">Hệ số:
                                                            ${scheduleDto.factor}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                            ${scheduleDto.getDateFormat()}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                            2.00am - 5.00am</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                            điểm: ${scheduleDto.location}</p>
                                                        <p class="schedule-value text-uppercase text-primary">
                                                            ${scheduleDto.name}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0">
                                                            Loại chim: Chào mào</p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                            yêu cầu:</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Phí
                                                            đăng kí(VND):</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.fee}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0"
                                                            style="display: inline;">
                                                            số người đăng kí:
                                                            <span class="text-uppercase text-primary mb-0"
                                                                style="display: inline;">
                                                                10/15</span>
                                                        </p>
                                                        </br><a href="https://web.facebook.com/birdfighter.compe/" class="btn btn-primary btn-viewInfo px-5"
                                                            style="margin-top: 10px;" target="_blank">Xem thông tin</a>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                            <div id="tab-2" class="tab-pane fade show p-0 active">
                                <div class="row g-5">
                                    <c:set var="scheduleData" value="${sessionScope.SCHEDULE}" />
                                    <c:if test="${not empty scheduleData}">
                                        <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                            <c:if test="${scheduleDto.statusOfContest == 1}">

                                                <div class="col-lg-3 col-md-4 col-sm-6">
                                                    <div class="bg-hero rounded text-center py-5 px-3 btn-register">
                                                        <p class="schedule-value text-uppercase text-info mb-3">Hệ số:
                                                            ${scheduleDto.factor}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                            ${scheduleDto.getDateFormat()}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                            2.00am - 5.00am</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                            điểm: ${scheduleDto.location}</p>
                                                        <p class="schedule-value text-uppercase text-primary">
                                                            ${scheduleDto.name}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0">
                                                            Loại chim: Chào mào</p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                            yêu cầu:</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Phí
                                                            đăng kí(VND):</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.fee}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0"
                                                            style="display: inline;">
                                                            số người đăng kí:
                                                            <span class="text-uppercase text-primary mb-0"
                                                                style="display: inline;">
                                                                10/15</span>
                                                        </p>
                                                        <input class="idHide" type="hidden"
                                                            value="${scheduleDto.id}" /></br>
                                                        <button class="btn btn-primary btn-register px-5"
                                                            style="margin-top: 10px;">Đăng kí
                                                            thi đấu</button>
                                                    </div>
                                                </div>
                                            </c:if>
                                            <c:if test="${scheduleDto.statusOfContest == 2}">

                                                <div class="col-lg-3 col-md-4 col-sm-6">
                                                    <div class="bg-hero rounded text-center py-5 px-3">
                                                        <p class="schedule-value text-uppercase text-info mb-3">Hệ số:
                                                            ${scheduleDto.factor}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                            ${scheduleDto.getDateFormat()}</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                            2.00am - 5.00am</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                            điểm: ${scheduleDto.location}</p>
                                                        <p class="schedule-value text-uppercase text-danger">
                                                            ${scheduleDto.name}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0">
                                                            Loại chim: Chào mào</p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                            yêu cầu:</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.minPoint} - ${scheduleDto.maxPoint} </p>
                                                        <p class="schedule-value text-uppercase text-light mb-0">Phí
                                                            đăng kí(VND):</p>
                                                        <p class="schedule-value text-uppercase text-light mb-3">
                                                            ${scheduleDto.fee}</p>
                                                        <p class="schedule-value text-uppercase text-secondary mb-0"
                                                            style="display: inline;">
                                                            số người đăng kí:
                                                            <span class="text-uppercase text-danger mb-0"
                                                                style="display: inline;">
                                                                10/15</span>
                                                        </p>
                                                        <button class="btn btn-danger px-5"
                                                            style="margin-top: 10px;">Hết hạn đăng kí</button>

                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="schedule" class="schedule-overlay">
                    <div class="shedule-form col-lg-4 col-md-5 col-sm-6">
                        <div class="schedule-header">
                            <div class="text-primary">Thông tin trận đấu</div>
                            <!-- <div class="button--close">X</div> -->
                            <button class="button--close">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" aria-hidden="true">
                                    <circle cx="12" cy="12" r="10" />
                                    <line x1="15" y1="9" x2="9" y2="15" />
                                    <line x1="9" y1="9" x2="15" y2="15" />
                                </svg>
                            </button>
                        </div>

                        <div class="schedule-body d-flex justify-content-center"></div>
                    </div>


                </div>
                <!-- Timetable End -->

                <!-- Start schedule script and toast -->
                <script type="text/javascript">
                    const buyBtn = document.querySelectorAll(".btn-register");
                    const schedule = document.querySelector('.schedule-overlay');
                    const sidebarClose = () => {
                        schedule.classList.remove("is-open");
                    };

                    buyBtn.forEach(buyBtn => {
                        buyBtn.addEventListener("click", function () {
                            schedule.classList.add("is-open");

                            const body = document.querySelector('.schedule-body');
                            body.innerHTML = '';

                            const newDriver = document.createElement('div');
                            newDriver.classList = 'schedule-detail';

                            var factor, date, time, place, tOC, tOB, registerNumber, pointReq, hiddenId, fee;

                            if (this.querySelector(".schedule-value:nth-of-type(1)") !== null) {
                                factor = this.querySelector(".schedule-value:nth-of-type(1)").innerHTML;
                                date = this.querySelector(".schedule-value:nth-of-type(2)").innerHTML;
                                time = this.querySelector(".schedule-value:nth-of-type(3)").innerHTML;
                                place = this.querySelector(".schedule-value:nth-of-type(4)").innerHTML;
                                tOC = this.querySelector(".schedule-value:nth-of-type(5)").innerHTML;
                                tOB = this.querySelector(".schedule-value:nth-of-type(6)").innerHTML;
                                pointReq = this.querySelector(".schedule-value:nth-of-type(8)").innerHTML;
                                fee = this.querySelector(".schedule-value:nth-of-type(10)").innerHTML;
                                registerNumber = this.querySelector(".schedule-value:nth-of-type(11) span").innerHTML;
                                hiddenId = this.querySelector(".idHide").value;
                            }

                            const birds = [];
            <c:set var="ownBird" value="${sessionScope.OWN_BIRD}"/>
            <c:if test="${not empty ownBird}">
                <c:forEach var="bird" items="${ownBird}" varStatus="counter">
                    birds.push("${bird.birdName}", "${bird.point}", "${bird.birdID}");
                </c:forEach>
            </c:if>
                            let text = "";

                            for (let i = 0; i < birds.length; i = i + 3) {
                                text += "<option value=" + birds[i + 2] + "," + birds[i + 1] + ">" + birds[i] +
                                    ", Rank point: " + birds[i + 1] + "</option>";
                            }

                            newDriver.innerHTML = `
            <div> 
            <h6 class="text-uppercase text-dark mb-3 ml-3">` + factor + `</h6>                                       
            <h6 class="text-uppercase text-dark mb-3 ml-3">` + date + `</h6>
            <h6 class="text-uppercase text-dark mb-3 ml-3">` + time + `</h6>
            <h6 class="text-uppercase text-dark mb-3 ml-3">` + place + `</h6>
            <h5 class="text-uppercase text-primary">` + tOC + `</h5>
            <p class="text-uppercase text-secondary mb-0 ml-3">` + tOB + `</p>
            <p class="text-uppercase text-secondary mb-0 ml-3">Điểm yêu cầu: ` + pointReq + `</p>
            <h6 class="text-uppercase text-dark mb-3 ml-3">Phí đăng kí(VND): ` + fee + `</h6>
            <p class="text-uppercase text-secondary mb-0 ml-3" style="display: inline;">
                số người đăng kí:
            <span class="text-uppercase text-primary mb-0 ml-3" style="display: inline;">` + registerNumber + `</span>
            </p>                     
                    
            <form action="DispatchServlet" method="POST">
                <h6 class="text-uppercase text-secondary mb-3 ml-3">Chọn chim đăng ký:  
                <select aria-label="chooseBird" name="cboBird">
                    <option selected disabled>Chim</option>
                    ` + text + `
                </select>
                <input type="hidden" name="hiddenContestId" value="` + hiddenId + `"></input>
                <input type="hidden" name="hiddenPoint" value="` + pointReq + `"></input>
                <input type="hidden" name="txtCost" value="` + fee + `"></input>
                <input type="hidden" name="txtType" value="` + 4 + `"></input>                         
            <button type="submit" name="btAction" value="cRegister" class="btn btn-primary px-5" style="margin-top: 10px;">Đăng kí thi đấu</button>
             </form>
             </div>
            `;
                            body.appendChild(newDriver);
                        });
                    });
                    const closeOverlayBtn = document.querySelector(".button--close");
                    closeOverlayBtn.addEventListener("click", sidebarClose);


                </script>
                <script type="text/javascript">
                    const viewInfo = document.querySelectorAll(".btn-viewInfo");
                    <!--<button type="submit" name="btAction" value="cRegister" class="btn btn-primary px-5" style="margin-top: 10px;">Đăng kí thi đấu</button>-->

                </script>
                <div id="toast">
                </div>
                <!-- end schedule script and toast -->

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