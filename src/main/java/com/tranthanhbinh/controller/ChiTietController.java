package com.tranthanhbinh.controller;
import com.tranthanhbinh.entity.*;
import com.tranthanhbinh.service.DanhMucService;
import com.tranthanhbinh.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/chitiet")
@SessionAttributes("giohang")
public class ChiTietController {
    @Autowired
    SanPhamService sanPhamService;
    @Autowired
    DanhMucService danhMucService;
    @GetMapping("/{masanpham}")
    public String Default(@PathVariable int masanpham ,ModelMap modelMap,HttpSession httpSession){
        SanPham sanpham = (SanPham) sanPhamService.ChitietSanpham(masanpham);

        List<DanhMucSanPham> danhMucSanPhams = danhMucService.DanhMucSanPham();
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang>  gioHangs= (List<GioHang>) httpSession.getAttribute("giohang");
            modelMap.addAttribute("soluonggiohang",gioHangs.size());

        }

        if (httpSession.getAttribute("username") != null){
            String ten= (String) httpSession.getAttribute("username");
            String chucaidau=ten.substring(0,1).toUpperCase();
            modelMap.addAttribute("username",chucaidau);
        }

        modelMap.addAttribute("sanpham", sanpham);
        modelMap.addAttribute("danhmuc",danhMucSanPhams);
        return "chitietsanpham";
    }
}
