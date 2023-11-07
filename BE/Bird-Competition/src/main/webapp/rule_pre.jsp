

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Rules</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">


                    <a href='<c:url value="/DispatchServlet?btAction=PostLogin"/>' class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <img src="FE/img/finallogo.png" style="width: 100px; margin-right: -40px; margin-bottom:50px;">
                        <h1 class="m-0 display-4 text-primary text-uppercase">BIRDFIGHTER</h1>
                    </a>



                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-secondary d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <h6 class="mb-0">birdfight@compe.com</h6>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <h6 class="mb-0">+123 321 333</h6>
                            </div>
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle" href="">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0 px-lg-5">

                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="index.jsp" class="nav-item nav-link">Home</a>
                                <a href="index.jsp" class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href="index.jsp" class="nav-item nav-link">Lịch thi đấu</a>
                                <a href="index.jsp" class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" id="cactrangdropdown" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                        <a href="#"class="dropdown-item">Luật thi đấu</a>
                                        <a href="feedback_pre.jsp" class="dropdown-item">Feedback</a>
                                        <a href="News_pre.jsp" class="dropdown-item">Tin Tức</a>
                                    </div>
                                </div>
                                <a href="contact_pre.jsp" class="nav-item nav-link">Liên Hệ</a>
                            </div>
                            <div class="nav-item dropdown">

                                <a href="login" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">Login/Signup</a>
                            </div>

                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->

       <!-- Hero Start -->
        <div class="container-fluid bg-primary p-5 bg-hero mb-2">
            <div class="row py-5">
                <div class="col-12 text-center">
                    <h1 class="display-flex text-uppercase text-white mb-md-4">Luật thi đấu</h1>

                    <ul class="nav nav-pills justify-content-between">
                        <li class="nav-item w-50">
                            <a class="nav-link btn btn-primary py-md-3 px-md-5 me-3 active" data-bs-toggle="pill" href="#pills-1">Thi Hót</a>
                        </li>
                
                        <li class="nav-item w-50">
                            <a class="nav-link btn btn-primary py-md-3 px-md-5 me-3" data-bs-toggle="pill" href="#pills-2">Cách tính điểm</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- Hero End -->


        <!-- Rule Start -->
        <div class="p-5">

            <div class="tab-content">
                <div class="tab-pane fade show active" id="pills-1">
                    <div class="mb-5">
                        <h1 class="text-uppercase mb-4">Luật thi đấu Chào Mào - thể thức thi Hót</h1>
                        <p class="text-primary">1. Trước khi mở khăn trùm lồng.</p>
                        <p class="text-black"> Trước khi mở khăn trùm lồng, phía khán giả có thể tự chủ động móc lồng theo các vị trí mà mình mong muốn. 
                            Lồng chim cần có mã số lồng, và mã số phải được móc dưới lồng để phía trọng tài(TT) tiện theo dõi và đọc số lồng rõ ràng. 
                            Phía TT cần mở khăn trùm cùng 1 thời điểm-móc lồng lên giàn cần có sự điều chỉnh khoảng cách(5-8cm) để lồng chim không đụng nhau. 
                            Phía TT cần đếm số lồng và xác nhận với BTC(chủ trường chim) để điều chỉnh giải thưởng-kèm thông báo công khai trước khi bắt đầu cuộc thi. 
                            Không thêm-bớt lồng sau khi phía TT đã thông báo cuộc thi chính thức bắt đầu. 
                        </p>
                        <p class="text-primary">2. Quy tắc chấm điểm đạt hay không đạt trong cuộc thi chào mào </p>
                        <p class="text-black">Cơ bản để chấm đạt hay không phía TT cần thỏa thuận để thống nhất với nhau, tiêu chí đạt hay không sẽ chia ra 3 loại: Thái độ thi đấu-Giọng hót thi đấu-Dáng bộ thi đấu 
                            2.1 Thái độ thi đấu 

                            Đạt: Khi chim có thái độ thi đấu linh hoạt, nhanh nhẹn, nhảy-chuyền cầu, rê cầu, bung cánh, xòe đuôi, mặt nhìn vào đối thủ để đấu hù dọa.
                            Không đạt: Đứng một chỗ, xù rũ, lơ là, mặt nhìn ra bên ngoài-mào tẹp-thái độ sợ sệt đối thủ, ăn-uống nước nhiều.
                            2.2 Giọng hót thi đấu 

                            Đạt: Khi chim ra bọng-họng liên tục, giọng đấu phải từ 3 âm tiết trở lên, giọng luyến hay-xoắn âm to-rõ ràng, giọng ché hù dọa đối thủ
                            Không đạt: Chim ra giọng mái (Quýt Qìu, wuýt wìu, nhưng giọng chim mái hay ra), khi thi đấu không sổ giọng-ra bọng, giọng dưới 3 âm tiết, và những giọng âm ngắn cứ lui tới không thay đổi.
                            2.3 Dáng bộ thi đấu 
                            Đạt: Bộ chim to-dài, dáng đứng thi đấu đẹp(bung cánh-xòe đuôi-cúp C-Đuôi tôm), mào dựng đứng.
                            Không đạt: Phình lông, thiếu đuôi cánh nhiều(trên 30%), xuất hiện lỗi: lộn, ngoái-ngữa, bu nóc, cắn chân, cắn lông, cắn nan
                        </p>
                        <p class="text-primary">3. Quy tắc đối với quý anh em nghệ nhân và khán giả </p>
                        <p class="text-black">
                            Chủ chim: Kiểm tra và đảm bảo an toàn về chim-lồng. Thức ăn, thức uống đầy đủ cho chim trong suốt quá trình thi đấu cho đến vòng bắt tay(vào top 10) mới được chêm thêm hoặc lấy ra thức ăn thức uống trong lồng. 
                            Không được vào khu vực mà BTC đã giăng dây hay lập rào chắn trước đó. Đặc biệt không động-chạm vào giàn treo chim, không tạo ra tiếng ồn làm kích động chim như: xù-xì-xuỵt.v.v. 
                            Cần theo dõi tổng thể các chú chim trên giàn thi đấu để có nhìn nhận khách quan và chính xác hơn. 
                            Tin tưởng-tôn trọng mọi quyết định của các trọng tài 
                            Trường hợp có vấn đề thắc mắc-cần điều chỉnh hoặc có ý kiến khác cần gặp BTC để xác nhận, xem xét và giải quyết 
                        </p>
                        <p class="text-primary">4. Cách chấm điểm-hạ chim trong các vòng </p>
                        <p class="text-black">
                            Loại trực tiếp: Đối với những chú chim có tật lỗi sau: Lộn-ngoái-ngữa nặng, tắm cóng, tắm khô. 
                            Vòng loại: Không hạn chế số vòng và số lượng chim hạ từng con trong các vòng. 
                            Khoảng 10 phút đầu(khoảng 3 vòng): TT sẽ quan sát và ghi chú những chú chim nào đấu yếu, xỉa lông, bung lồng vì sợ, không ra giọng, xù lông vì sợ. Riêng những chú chim ngoái-ngữa-bu nóc-cắn chân-cắn lông từ 3 lần trở lên cũng sẽ bị loại. Cho dù thi đấu còn tốt trong quá trình đó. 
                            Khi MC thông báo thời gian còn khoảng 30 giây của mỗi vòng, phía TT cần rà soát và chốt sổ các chú chim tật lỗi, chim không thi đấu vào biên bản để MC công bố. 
                            Những vòng sơ loại tiếp theo: Tiếp tục đánh giá chim để hạ qua tật-lỗi và thái độ sợ sệt không thi đấu của các chú chim trên giàn. Nhưng có những quy tắc: nếu chim lỗi nhẹ và chỉ xuất hiện 1 lần nhưng thái độ thi đấu rất tốt(có thể bung-xòe và ché) thì cũng có thể đi tiếp 
                            Những vòng lựa chọn sát top 40-30-20(tùy số lượng chim tham gia nhiều ít): Cần đánh giá khắt khe để lựa chọn những chú chim xứng đáng. Do vậy MC cần công khai ngay khi phía TT thông tin lỗi tiêu chí không đạt của mỗi chú chim để phía anh em nghệ nhân nắm tình hình. 
                            Khi loại chim vòng sát top hoặc các vòng trong top: thì không được loại quá số lượng cho phép. Ví dụ trên giàn còn 32 con, thì không được loại quá 2 con để giữ đúng số chim trong top.
                            Những vòng trong top, cần đưa chim ra 2 sào thi: Nếu chim đấu đều quá cũng có thể tăng thêm thời gian lên, không nhất thiết phải ép hạ chim dù chim đang đấu bình thường. 
                            Khi vào top 10: Quý anh em trong 10 chú chim có thể lấy chim để chêm-lấy ra thức ăn trong lồng. Chăm chim trong vòng 1 phút, thời gian này phía TT cho các lồng bóc thăm để lựa chọn ví trí. 
                            Mỗi lồng sẽ được bóc 1 số, số đó sẽ tùy thuộc vào vị trí của chú chim sẽ móc lên giàn đấu để lựa chọn 4 chú chim vào Chung kết.
                            Từ top 10 để chọn 4 chú chim vào chung kết: TT chấm độc lập, công tâm với các tiêu chí Đạt-Không đạt rõ ràng. 
                            Trường hợp có 2 hay nhiều chú chim bị lỗi giống nhau trong một vòng đấu top và hết thời gian thì cần đưa thêm tiêu chí: So kè để lựa chú chim xứng đáng được đi tiếp. Cần công khai đọc rõ ràng để anh em nghệ nhân không bị thắc mắc.
                            Ở vòng chung kết: TT chấm độc lập, công tâm, so kè với nhiều tiêu chí nổi bật của mỗi chú chim: Cần đếm giọng hót-giọng ché-thái độ bung xòe-hình bộ với dáng đấu đẹp để lựa các chú chim Nhất-nhì-ba.
                        </p>

                    </div>
                </div>
                <div class="tab-pane fade" id="pills-2">
                    <div class="mb-5">
                        <h1 class="text-uppercase mb-4">Cách tính điểm</h1>

                        <p class="text-black">
                          cách tính điểm
                        </p>


                    </div>      


                </div>
            </div>

            <!-- <div class="px-5">
                <div class="row gx-3 d-flex justify-content-center">
                    <div>
                        
                    </div>
                </div>
            </div> -->
            <!-- Rule End -->

            <!-- Footer Start -->
            <jsp:include page="JspCommon/webfooter.jsp"/>
            <!-- Footer End -->





            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
    </body>
</html>
