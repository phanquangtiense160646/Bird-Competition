

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
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
         <!-- Header Start -->
        <jsp:include page="JspCommon/webheader.jsp"/>
        <!-- Header End -->


        <!-- Hero Start -->
        <div class="container-fluid bg-primary p-5 bg-hero mb-2">
            <div class="row py-5">
                <div class="col-12 text-center">
                    <h1 class="display-flex text-uppercase text-white mb-md-4">Luật thi đấu</h1>

                    <ul class="nav nav-pills justify-content-between">
                        <li class="nav-item w-25">
                            <a class="nav-link btn btn-primary py-md-3 px-md-5 me-3 active" data-bs-toggle="pill" href="#pills-1">Thi Hót</a>
                        </li>
                        <li class="nav-item w-25">
                            <a class="nav-link btn btn-primary py-md-3 px-md-5 me-3" data-bs-toggle="pill" href="#pills-2">Thi Chọi</a>
                        </li>
                        <li class="nav-item w-25">
                            <a class="nav-link btn btn-primary py-md-3 px-md-5 me-3" data-bs-toggle="pill" href="#pills-3">Cách tính điểm</a>
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
                        <h1 class="text-uppercase mb-4">Luật thi đấu Họa Mi - thể thức thi Chọi</h1>

                        <p class="text-black"> 1- Chim được đặt lên bàn chọi, mở cửa lồng áp sát vào cửa công,đánh nhau qua song xuốt 
                            Trọng tài ( căn cứ vào số thứ tự đã bốc thăm ) để gọi tên chủ chim và số thứ tự
                            2- Trận chọi được bắt đầu từ khi tấm ngăn chắn cửa công được Trọng tài phụ rút lên.
                            3- Khi 2 con Chim va vào nhau để chọi thì Trọng tài cho đồng hồ chạy, cứ 1 vòng phút thì tính là 100 điểm.
                            4- Khi 2 con chim đang đánh và 1 trong 2 con lơi ra không còn chạm vào nhau nữa thì đồng ngắt,chạm vào chọi thì đồng hồ lại chạy.
                            5- Khi 2 con chim chỉ đánh đòn mỏ DÍNH BẤT KÌ BỘ PHẬN THÂN THỂ NÀO VỚI NHAU thì Trọng tài để đồng hồ tự chạy tính điểm.
                            6- Khi 2 con không chịu giáp chọi , Trọng tài sẽ đếm con nào nhảy xuống cửa công trước 4 lần ( chưa chạm mỏ ) hoặc 3 lần ( đã chạm mỏ )được ở lại. số lần nhảy xuống không chính diện và ko sát cửa công thì không được tính.
                            7- Nếu giáp choi hoặc choi rồi lơi ra , 2 con nhảy lên cầu hót , sau 15 giây không con nào xuống cửa công, Trọng tài sẽ dõng dạc đếm từ 1 đến 20, trong thời gian đó con nào xuống cửa công trước con đó được ở lại.
                            8- Hai con chim đang chọi, một con lơi ra không chịu vào chọi hoặc lên cầu hót, con kia vẫn lùng sục trước cửa công sau 15 giây, Tròng tài sẽ đếm từ 1 đến 20 mà con lơi ra ko chịu vào chọi thì con đứng trước cửa công sẽ được ở lại.
                            9- Khi 2 con chim không chịu chọi hoặc chọi rồi lơi ra, lên cầu hót. Trọng tài đếm số lần nhảy xuống cửa công hoặc đếm từ 1 đến 20 mà vẫn không có con nào xuống chọi, Trọng tài sẽ trao đổi với 2 chủ chim nếu 1 trong 2 chủ chim nhường thì thôi. Ngược lại k ai chịu ,Trọng tài sẽ ra lệnh rút then mở khóa cửa công để thông lồng chọn con chim thắng được ở lại.khi thông lồng 2 con chim vò nhau,đồng hồ chạy tự động!con nào thắng ở lại!
                            Nếu 2 con cùng k chọi.nếu là cặp số 1 và số 2. Cả 2 chủ chim k chịu thông lồng phân thắng bại thì cả 2 cặp chim đều phải hạ.nhường chỗ cho cặp 3-4!
                            Nếu cặp số 1 đánh với cặp số 2 ,nếu thắng thì 1 trong 2 con sẽ ở lại tiếp con số 3,trong trường hợp này nếu cả 2 con cùng k xuống thì sẽ loại cặp số 3 vì thành tích cặp số 1 hoặc cặp số 2 đang ở trên bàn hơn vì đã đuổi dc 1 con!
                            10- 2 con chim đang chọi, sau khi Trọng tài áp dụng mọi điều luật ( đếm số lần, đếm từ 1 đến 20 mà vẫn không có kết quả thì con nào có nhiều điểm hơn và thành tích hơn con đó được ở lại. Nếu 2 con bằng số điểm nhau thì con có số lần chiến thắng chim khác ở trong sới chọi nhiều hơn được ở lại. Nếu tất cả đều = nhau thì bốc thăm.
                            11- 2 con chim đang chọi, 1 con lên cầu ăn hoặc uống thì Trọng tài không tính vào thời gian chọi kể cả đếm.
                            Nếu 1 con lên cầu ăn,con còn lại vẫn chờ cửa và k lên cầu ăn trọng tài cũng không được đếm và cũng k dc tính vào thời gian chọi
                            Nếu 2 con cùng lên cầu ăn. 2 con đều ngừng ăn và lơi khỏi cóng cám và nước thì bắt đầu tính luật như bình thường
                            Nếu thời gian đang đếm 1-15 chim không ăn uống. Nhưng chim lại uống hoặc ăn thì phải dừng. Ngừng ăn thì lại đếm nối tiếp đến khi đủ 15
                            Nếu cả 2 con ăn xong,con nào xuống cửa trước trong khi con kia không xuống,trọng tài có thể đếm 1-15 hoặc con kia đảo cầu 3 lần,con đảo cầu thắng.
                            12- khi 2 con chim đang chọi, một con lách cửa công sang lồng con kia, thời gian chọi vẫn được tính điểm.
                            14- 2 con chim chọi, con nào thắng ở lại sẽ được cộng thêm 1 điểm.
                            15-2 con chim đang chọi,1 con giãn ra lên cầu trước,con kia lên cầu sau và cả 2 con đều không xuống nữa thì trọng tài sẽ xử(con lên cầu sau thắng)
                            16- Trong hội thi, còn nào có số điểm cộng dồn cao nhất sẽ được giải nhất sau đó nhì và 3. Sau giải ba là giải Trung Cách ( có thể thứ tự từ trung cách 1 đến 4 tùy theo độ lớn của giải ), còn chim ở lại cuối cùng không còn chim đánh tiếp được nhận giải điện quân.
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


            <!-- Back to Top -->
            <a href="#" class="btn btn-dark py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


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
