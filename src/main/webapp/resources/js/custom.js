$(document).ready(function (){
    $("#btndangnhap").click(function(){
        var  username=$("#username").val();
        var  password=$("#password").val();
        $.ajax({
            url:"http://localhost:8080/api/kiemtradangnhap",
            type:"POST",
            data:{
                username:username,
                password:password
            },

            success:function (value){
                if (value=="true"){
                    window.location="http://localhost:8080/";
                }
                else {
                    alert("Đăng Nhập Thất Bại");
                }
            }
        })
    });

    $(".btn-giohang").click(function () {
        var  mact=$(this).attr("data-machitiet");
        var mamau=$(this).closest("tr").find(".mau").attr("data-mau")
        var tenmau=$(this).closest("tr").find(".mau").text();
        var masize=$(this).closest("tr").find(".size").attr("data-size")
        var size=$(this).closest("tr").find(".size").text();
        var  soluong=$(this).closest("tr").find(".soluong").text();
        var tensp=$("#tensanpham").text();
        var giatien=$("#gia").attr("data-value");
        $.ajax({
            url: "http://localhost:8080/api/ThemGioHang",
            type: "GET",
            data: {
                mact:mact,
                masp:masize,
                masize:masize,
                mamau:mamau,
                tensp:tensp,
                giatien:giatien,
                tenmau:tenmau,
                tensize:size,
                soluong:soluong
            },
            success:function (value) {
            }
        }).done(function () {
            $.ajax({
                url: "http://localhost:8080/api/LaySoLuongGioHang",
                type: "GET",
                success:function (value) {
                    $("#giohang").html("<span>"+value+"</span>")
                }
            })
        })

    });


    GanTienTongHang();

    function GanTienTongHang(isEventChange){
        var  tongtiensp=0;
        $(".giatien").each(function () {
            var  giatien=$(this).closest("tr").find(".giatien").attr("data-value");
            var soluong=$(this).closest("tr").find(".soluong-giohang").val();


            var  tongtien=parseInt(giatien)* soluong;
            var format=parseFloat(tongtien).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()

            if (!isEventChange ){
                $(this).html(format);
            }
            tongtiensp=tongtiensp+ tongtien
            var formatTongTien=tongtiensp.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()
            $("#tongtien").html(formatTongTien+"");

        })
    }
    $(".soluong-giohang").change(function (){
        var  soluong=$(this).val();
        var  giatien=$(this).closest("tr").find(".giatien").attr("data-value");

        var  tongtien =soluong*parseInt(giatien);
        var format=tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()

        $(this).closest("tr").find(".giatien").html(format);
        GanTienTongHang(true);

        var mamau=$(this).closest("tr").find(".mausanpham").attr("data-value");
        var masize=$(this).closest("tr").find(".sizesanpham").attr("data-value");
        var masp=$(this).closest("tr").find(".tensanpham").attr("data-value")

        $.ajax({
                url: "http://localhost:8080/api/capnhatgiohang",
                type: "GET",
                data: {
                    masp:masp,
                    masize:masize,
                    mamau:mamau,
                    soluong:soluong
                },
                success:function () {

                }
            }
        )

    });

    $(".btn-xoa").click(function () {
        var self=$(this);
        var mamau=$(this).closest("tr").find(".mausanpham").attr("data-value");
        var masize=$(this).closest("tr").find(".sizesanpham").attr("data-value");
        var masp=$(this).closest("tr").find(".tensanpham").attr("data-value")
        $.ajax({
                url: "http://localhost:8080/api/xoasanphamgiohang",
                type: "GET",
                data: {
                    masp:masp,
                    masize:masize,
                    mamau:mamau,
                },
                success:function () {
                    self.closest("tr").remove();
                    GanTienTongHang(true);
                }
            }
        ).done(function () {
            $.ajax({
                url: "http://localhost:8080/api/LaySoLuongGioHang",
                type: "GET",
                success:function (value) {
                    $("#giohang").html("<span>"+value+"</span>")
                }
            })
        })
    });
});



