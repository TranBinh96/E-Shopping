package com.tranthanhbinh.controller;

import com.tranthanhbinh.entity.SanPham;
import com.tranthanhbinh.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/themsanpham")
public class ThemSanPhamContrtoller {
    @Autowired
    SanPhamService sanPhamService;
    @GetMapping
    public  String Deafault(HttpSession httpSession, ModelMap map){
        List<SanPham>sanPhams=sanPhamService.LayDanhSachSanPhamLimit(15);
        map.addAttribute("sanPham",sanPhams);

        return "themsanpham";
    }
}
