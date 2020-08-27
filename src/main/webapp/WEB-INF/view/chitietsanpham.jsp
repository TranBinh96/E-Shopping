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
        .btn-giohang{
            margin-top: -5px;
        }
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
            color: #f3ebea;
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
                                <c:when test="${username != null}">
                                    <li><a id="username">  ${username} </a></li>
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
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Danh Mục</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                <c:forEach items="${danhmuc}" var="danhmuc">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="/sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc}">${danhmuc.tendanhmuc}</a></h4>
                                        </div>
                                    </div>
                                </c:forEach>
                                </div>


                            </div><!--/category-products-->


                            <div class="price-range"><!--price-range-->
                                <h2>PHẠM VI GIÁ</h2>
                                <div class="well text-center">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b class="pull-left">100000 VNĐ</b> <b class="pull-right">4000000 VNĐ</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="../../resources/trangchu/images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->

                        </div>
                    </div>
                    <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 chitietsp">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <img class="anhchitiet" src='<c:out value="/resources/trangchu/images/sanpham/${sanpham.hinhsanpham}" />' alt="" />
                            </div>
                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 ">
                                <h2 id="tensanpham" data-value="${sanpham.masanpham}">${sanpham.tensanpham}</h2>
                                <p id="gia" data-value="${sanpham.giatien} ">Giá : ${sanpham.giatien} VNĐ</p>
                                <table class="table">
                                    <thead>
                                      <tr>
                                        <th>Màu</th>
                                        <th>Size</th>
                                        <th>Số Lượng</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sanpham.chitietsanpham}" var="chitiet">
                                            <tr>
                                                <td class="mau" data-mau="${chitiet.mausanpham.mamau}">${chitiet.mausanpham.tenmau}</td>
                                                <td class="size" data-size="${chitiet.sizesanpham.masize}"> ${chitiet.sizesanpham.size}</td>
                                                <td class="soluong" data-soluong="${chitiet.soluong}">${chitiet.soluong}</td>
                                                <td><button data-machitiet="${chitiet.machitietsanpham}" style="text-decoration: none;" class="btn btn-success btn-giohang">Thêm</button></td>

                                            </tr>
                                    </c:forEach>
                                    </tbody>
                                  </table>
                                </div> <!-- end col -->
                            </div> <!-- end row -->
                            <div class="row" style="margin-top: 30px; margin-left: 300px;">
                                <h2>Mô Tả Sản Phẩm </h2>
                                <p>${sanpham.mota}</p>
                            </div>
                    </div>

                </div>
            </div>
        </section>
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
                        <form action="#" class="searchform">
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