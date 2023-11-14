<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bird Competition</title>
  <link href="FE/css/login2.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  
  
</head>

<body>
    
    
  <div class="container" id="container">
    <div class="form-container register-container">
      <form class="formngu">
        <h1>Đăng ký ngay</h1>
        <div class="form-control">
          <input name="txtUsername" type="text" id="username" placeholder="Username" />
          <small id="username-error"></small>
          <span></span>
        </div>
        <div class="form-control">
          <input name="txtPassword" type="text" id="password" placeholder="Password" />
          <small id="password-error"></small>
          <span></span>
        </div>
        <div class="form-control">
          <input name="txtConfirm" type="text" id="user-repeatpass" placeholder="Re-Password" />
          <small id="repassword-error"></small>
          <span></span>
        </div>

        <div class="form-control">
          <input name="txtFullname" type="text" id="user-name" placeholder="Họ Tên" />
          <small id="fullname-error"></small>
          <span></span>
        </div>

        <button class="btn btn-primary btn-block" type="submit" value="submit">Đăng kí</button>
      </form>
    </div>
    <c:set var="errors" value="${requestScope.CREATE_ERRORS}"/>
    <div class="form-container login-container" id="logreg-forms">
      <form class="formngu form-signin" action="signup" method="post">
        <h1>Đăng ký ngay</h1>
        <div class="form-control">
          <input name="txtUsername" type="text" id="username" placeholder="Username" />
          <small id="username-error">${errors.usernameLengthErr}</small>
          <span></span>
        </div>
        <div class="form-control">
          <input name="txtPassword" type="password" id="password" placeholder="Password" />
          <small id="password-error">${errors.passwordLengthErr}</small>
          <span></span>
        </div>
        <div class="form-control">
          <input name="txtConfirm" type="password" id="user-repeatpass" placeholder="Re-Password" />
          <small id="repassword-error">${errors.confirmLengthErr}</small>

        </div>
                    <span style="color: red;">${errors.usernameIsExisted}</span>
        <button class="btn btn-primary btn-block" type="submit" value="submit">Đăng kí</button>
      </form>
    </div>

    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1 class="title">
            Hello <br />
            friends
          </h1>
          <p>If you have an account, login here and have fun</p>
          <button class="ghost" id="login">
            Đăng nhập
            <i class="fa-solid fa-arrow-left"></i>
          </button>
        </div>

        <div class="overlay-panel overlay-right">
          <h1 class="title">
            Bắt đầu <br />
            hành trình của bạn
          </h1>
          <p>
           <!--Nếu bạn chưa có tài khoản, tham gia với chúng tôi và bắt đầu hành trình của bạn-->   
          </p>
          <form action="login">
            <button class="ghost" id="register">
              Đăng nhập
              <i class="fa-solid fa-arrow-right"></i>
            </button>
          </form>
          
        </div>
      </div>
    </div>
  </div>
</body>
</html>