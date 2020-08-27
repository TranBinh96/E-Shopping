<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Trang Chủ | E-Mua Sắm</title>
    <link href="../../resources/trangchu/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/prettyPhoto.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/price-range.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/animate.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/main.css" rel="stylesheet">
    <link href="../../resources/trangchu/css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../resources/trangchu/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../resources/trangchu/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../resources/trangchu/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../resources/trangchu/images/ico/apple-touch-icon-57-precomposed.png">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="header.jsp"></jsp:include>
    <style>
        #giohang{
            width: 27px;
            height: 27px;
            background: #5bc0de;
            display: block;
            text-align: center;
            padding-top: 0px;
            font-size: 18px;
            font-weight: 700;
            position: absolute;
            top: -5px;
            left: -7px;
            border-radius: 54px;
            color: #fdfdfd;
        }
        #username {
            width: 40px;
            height: 40px;
            background: #09e095;
            text-align: center;
            padding-top: 31%;
            color: white;
            font-size: 26px;
            border-radius: 60px;
            margin-top: 0px;
            font-weight: bold;
            font-family: initial;
        }
        .btn-xoa{
            height: 37px;
            float: right;
            margin-top: -19px;
            margin-left: 23px;
        }
        .dathang{
            background: #0275d8;
            border-radius: 7px;
            width: 149px;
            margin-bottom: 19px;
        }
    </style>
</head><!--/head-->

<body>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> 0984559031</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> Binhvinhphong@gmai.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 clearfix">
                    <div class="logo pull-left">
                        <a href="/"><img src=' <c:out value="/resources/trangchu/images/home/logo.png" />' alt=" " /></a>
                    </div>
                    <div class="btn-group pull-right clearfix">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                Quốc Gia
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">Việt Nam</a></li>
                                <li><a href="">Nhật Bản</a></li>
                            </ul>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                Khu Vực
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">Hà Nội</a></li>
                                <li><a href="">Hải Phòng</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 clearfix">
                    <div class="shop-menu clearfix pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-user"></i> Tài Khoản</a></li>
                            <li><a href="#"><i class="fa fa-star"></i>Danh sách yêu thích</a></li>
                            <li><a href="#"><i class="fa fa-crosshairs"></i>Thủ tục thanh toán</a></li>
                            <li><a href="/giohang"><i class="fa fa-shopping-cart"></i> Giỏ Hàng </a> <span id="giohang">${soluonggiohang}</span></li>

                            <c:choose>
                                <c:when test="${user != null}">
                                    <li><a id="username">  ${user} </a></li>
                                    <li><a href="/dangxuat"><i class="fa fa-lock"></i> Đăng Xuất</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="/dangnhap"><i class="fa fa-lock"></i> Đăng Nhập</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->


    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/" class="active">Trang Chủ</a></li>
                            <li class="dropdown"><a href="#">E-SHOPPING<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="#">Các sản phẩm</a></li>
                                    <li><a href="#">Thông tin chi tiết sản phẩm</a></li>
                                    <li><a href="#">Giỏ Hàng</a></li>

                                </ul>
                            </li>
                            <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a  href="blog.html">Danh sách Blog</a></li>
                                    <li><a href="blog-single.html">Blog Đơn</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Liên Lạc</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Sản Phẩm Tìm Kiếm"/>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
<div class="bootom">

        <div class="container giohang ">
            <div class="row ">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <h3>Danh Sách Sản Phẩm Trong Giỏ Hàng</h3>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Sản Phẩm</th>
                            <th>Màu </th>
                            <th>Size</th>
                            <th>Số Lượng</th>
                            <th>Giá Tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${giohang}" var="giohang">
                            <tr data-machitiet="${giohang.machitiet}">
                                <td class="tensanpham"  data-value="${giohang.masp}"> ${giohang.tensp}</td>
                                <td class="mausanpham" data-value="${giohang.mamau}" >${giohang.tenmau} </td>
                                <td class="sizesanpham" data-value="${giohang.masize}" >${giohang.tensize} </td>
                                <td class="soluong"><input  class="soluong-giohang"  min="1" style="width: 73px;" type="number" value="${giohang.soluong}"></td>
                                <td ><p class="giatien" data-value="${giohang.giatien}">${giohang.giatien}
                               <td></p><button type="button " class="btn btn-danger btn-xoa">Xóa</button></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                      <h3 >Tổng Tiền : <span id="tongtien">0</span> VNĐ</h3>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <form action="/giohang" method="post">
                        <h3>Thông Tin Người Nhận Người Mua</h3>
                        <div class="form-group">
                            <label for="usr">Tên Người Nhận / Người Mua:</label>
                            <input type="text" class="form-control" id="usr" name="tennguoinhan">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Điện Thoại Liên Lạc</label>
                            <input type="text" class="form-control" id="pwd" name="dienthoailienlac">
                        </div>
                        <div class="form-check">
                            <label >Chọn Phương Thức Giao hàng:</label>
                            <select name="phuongthucgiahang">
                                <option value="Giao Hang Tan Noi">Giao Hàng Tận Nơi</option>
                                <option value="Thanh Toan Online">Thanh Toán Online</option>
                                <option value="Lay Tai Cua Hang">Lấy Tại CỦa Hàng</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="pwd">Địa Chỉ Nhận Hàng</label>
                            <input type="text" class="form-control" name="diachinhanhang" >
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Ghi Chú</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1"  name="ghichu" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary dathang"  style="background: #31b0d5">Đặt Hàng</button>
                    </form>
                </div>
            </div> <!-- end giohang -->
        </div> <!-- end row -->
    </div> <!-- end container -->
</div>

<footer id="footer"><!--Footer-->

    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Service</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Online Help</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Order Status</a></li>
                            <li><a href="#">Change Location</a></li>
                            <li><a href="#">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Quock Shop</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">T-Shirt</a></li>
                            <li><a href="#">Mens</a></li>
                            <li><a href="#">Womens</a></li>
                            <li><a href="#">Gift Cards</a></li>
                            <li><a href="#">Shoes</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Policies</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Privecy Policy</a></li>
                            <li><a href="#">Refund Policy</a></li>
                            <li><a href="#">Billing System</a></li>
                            <li><a href="#">Ticket System</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Company Information</a></li>
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">Store Location</a></li>
                            <li><a href="#">Affillate Program</a></li>
                            <li><a href="#">Copyright</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2>Giới Thiệu Mua Sắm</h2>
                        <form action="#" class="searchform" style="width: 224px;">
                            <input type="text" placeholder="Địa Chỉ Email Của bạn" />
                            <button type="Xác Nhận" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                            <p>Nhận các bản cập nhật gần đây nhất từ <br />trang web của chúng tôi và được cập nhật bản thân của bạn ...</p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2020 .</p>
                <p class="pull-right">Designed by <span>Thanh Binh</span></p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->


<jsp:include page="fooder.jsp"/>
<script src="../../resources/trangchu/js/jquery.js"></script>
<script src="../../resources/trangchu/js/bootstrap.min.js"></script>
<script src="../../resources/trangchu/js/jquery.scrollUp.min.js"></script>
<script src="../../resources/trangchu/js/price-range.js"></script>
<script src="../../resources/trangchu/js/jquery.prettyPhoto.js"></script>
<script src="../../resources/trangchu/js/main.js"></script>
</body>
</html>