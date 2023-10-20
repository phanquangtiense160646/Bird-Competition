/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function toggleResetPswd(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-reset').toggle(); // display:block or none
}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
})

$('#logreg-forms #btn-signup').click(function() {
    window.location.href = 'Signup.jsp';
});

$('#cancel_signup').click(function() {
    window.location.href = 'Login.jsp';
});

$(document).ready(function(){
    // Định nghĩa sự kiện click cho nút Google
    $('.google-btn').click(function(){
        // Chuyển hướng đến trang xác thực Google
        window.location.href = 'https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/Bird-Competition/login-google&response_type=code&client_id=507956590617-8srqvghri9v7r3r2joqe9ak8lnl0stdf.apps.googleusercontent.com&approval_prompt=force'; 
    });
});



