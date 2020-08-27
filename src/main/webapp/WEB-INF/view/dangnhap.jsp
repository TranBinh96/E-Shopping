<%@ page import="java.util.List" %>
<%@ page import="com.tranthanhbinh.entity.NhanVien" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng Nhâp Hệ Thống</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="../../resources/css/login.css">
    <style>
        #btndangnhap{
            background: #ff4b2b;
            border-radius: 16px;
            padding: 14px 23px;
            border: 1px solid #fbfbfb;
            text-transform: uppercase;
            color: white;
            font-size: 14px;
            font-family: serif;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
            0 10px 10px rgba(0, 0, 0, 0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 574px;
        }
    </style>
</head>
<body class="bodydangnhap" id="bodydangnhap">
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="/dangnhap/dangkytaikhoan" method="post">
            <h1>Tạo Tài Khoản</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>Hoặc Dùng Email Để Đăng Ký</span>
            <input type="text" placeholder="Tên Đăng Nhập" name="username" />
            <input type="text" placeholder="Địa Chỉ" name="diachi" />
            <input type="text" placeholder="Chứng Minh Nhân Dân" name="cnnd" />
            <input type="email" placeholder="Địa Chỉ Email" name="email" />
            <input type="password" placeholder="Mật Khẩu" name="password" />
            <input type="password" placeholder="Nhập Lại Mật Khẩu" name="passwordrepeat" />
            <button>Đăng Ký</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form>
            <h1>Đăng Nhập</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>Hoặc sử Dụng Tài Khoản</span>
            <input id="username" type="text" placeholder="Tên Đăng Nhập"  name="username"/>
            <input id="password" type="password" placeholder="Mật Khẩu" name="password"/>
            <a href="#">Quên Mật Khẩu?</a>
            <a href="#" id="btndangnhap">Đăng Nhập</a>
        </form>

    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Chào Bạn</h1>
                <p>Nhập thông tin cá nhân của bạn và bắt đầu hành trình với chúng tôi</p>
                <button class="ghost" id="signIn">Đăng Nhập</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Chào mừng trở lại!</h1>
                <p>Để giữ kết nối với chúng tôi, vui lòng đăng ký bằng thông tin cá nhân của bạn</p>
                <button class="ghost" id="signUp">Đăng Ký</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="fooder.jsp"/>
<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add('right-panel-active');
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove('right-panel-active');
    });
</script>
</body>
</html>
