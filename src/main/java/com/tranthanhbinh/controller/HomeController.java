package com.tranthanhbinh.controller;
import com.tranthanhbinh.entity.DanhMucSanPham;
import com.tranthanhbinh.entity.GioHang;
import com.tranthanhbinh.entity.SanPham;
import com.tranthanhbinh.service.DanhMucService;
import com.tranthanhbinh.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    SanPhamService sanPhamService;

    @Autowired
    DanhMucService danhMucService;
    @GetMapping
    public  String Deafault(ModelMap map, HttpSession httpSession){
        if (httpSession.getAttribute("username") != null){
            String ten= (String) httpSession.getAttribute("username");
            String chucaidau=ten.substring(0,1).toUpperCase();
            map.addAttribute("username",chucaidau);
        }
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang>  gioHangs= (List<GioHang>) httpSession.getAttribute("giohang");
            map.addAttribute("soluonggiohang",gioHangs.size());
        }
        List<SanPham> listsp=sanPhamService.LayDanhSachSanPhamLimit(3);
        List<SanPham> listsp1=sanPhamService.LayDanhSachSanPhamLimit(17);
        map.addAttribute("list",listsp);
        map.addAttribute("list1",listsp1);
        List<DanhMucSanPham>DanhMucList=danhMucService.DanhMucSanPham();
        map.addAttribute("danhmuc",DanhMucList);



        return  "trangchu";
    }
    @GetMapping("/dangxuat")
    public  String DangXuat(HttpSession session ){
        session.removeAttribute("username");
        session.removeAttribute("giohang");
        return "redirect:/";
    }
}
