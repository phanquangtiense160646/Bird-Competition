<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Validate form</title>
  <link href="FE/css/login2.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  
  
</head>

<body>
    
    
  <div class="container" id="container">
    <div class="form-container register-container">
      <form>
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
        <span>or use your account</span>
        <div class="social-container">

          <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/Bird-Competition/login-google&response_type=code&client_id=507956590617-8srqvghri9v7r3r2joqe9ak8lnl0stdf.apps.googleusercontent.com&approval_prompt=force" class="social"><i class="fa-brands fa-google"></i></a>

        </div>
      </form>
    </div>

    <div class="form-container login-container" id="logreg-forms">
      <form class="form-signin" action="login" method="post">
        <h1>Đăng nhập</h1>
        <div class="form-control2">
          <input name="user" type="user" id="inputUser" class="form-control" placeholder="Username" required=""
            autofocus="" />
          <small class="email-error-2"></small>
          <span></span>
        </div>
        <div class="form-control2">
          <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password"
            required="" />
          <small class="password-error-2"></small>
          <span></span>
        </div>

       
        
            <p style="text-align: center; color: red;"><span class="text-danger">${msg}</span></p>
       

        <div class="content">
          <div class="checkbox">
            <!--<input type="checkbox" name="checkbox" id="checkbox" />-->
            <!--<label for="">Remember me</label>-->
          </div>
          <div class="pass-link">
            <!--<a href="#">Forgot password</a>-->
          </div>
        </div>
        <button class="btn btn-success btn-block" type="submit" value="submit">Login</button>
        <span>Or use your account</span>
        <div class="social-container">

          <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/Bird-Competition/login-google&response_type=code&client_id=507956590617-8srqvghri9v7r3r2joqe9ak8lnl0stdf.apps.googleusercontent.com&approval_prompt=force" class="btn google-btn social-btn"><i class="fab fa-google-plus-g"></i></a>

        </div>
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
          <button class="ghost" id="register">
            Đăng ký
            <i class="fa-solid fa-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>
  </div>
</body>
<script src="FE/js/login.js"></script>

</html>