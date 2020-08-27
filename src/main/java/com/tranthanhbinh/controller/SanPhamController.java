package com.tranthanhbinh.controller;

import com.tranthanhbinh.entity.DanhMucSanPham;
import com.tranthanhbinh.entity.SanPham;
import com.tranthanhbinh.service.DanhMucService;
import com.tranthanhbinh.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
    @Autowired
    DanhMucService danhMucService;
    @Autowired
    SanPhamService sanPhamService;

    @GetMapping("/{id}/{tendanhmuc}")
    public  String Deafault(HttpSession httpSession, ModelMap map , @PathVariable int id,@PathVariable String tendanhmuc){
        if (httpSession.getAttribute("username") != null){
            String ten= (String) httpSession.getAttribute("username");
            String chucaidau=ten.substring(0,1).toUpperCase();
            map.addAttribute("username",chucaidau);
        }
        List<DanhMucSanPham> DanhMucList=danhMucService.DanhMucSanPham();
        map.addAttribute("danhmuc",DanhMucList);

        map.addAttribute("tendanhmuc",tendanhmuc);
        List<SanPham> list=sanPhamService.LaySanPhamTheoMaDanhMuc(id);
        map.addAttribute("list",list);


        return  "sanpham";
    }
}
