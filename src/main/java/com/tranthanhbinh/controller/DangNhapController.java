package com.tranthanhbinh.controller;


import com.tranthanhbinh.entity.NhanVien;
import com.tranthanhbinh.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/dangnhap")

public class DangNhapController {
    @Autowired
    NhanVienService nhanVienService;

    @GetMapping
    public  String Dedault(){

        return "dangnhap";
    }

    @PostMapping("dangkytaikhoan")
    public  String DangKyTaiKhoan(@RequestParam(name = "username") String username, @RequestParam(name = "password") String password ,
                                  @RequestParam(name = "passwordrepeat") String passwordrepeat, @RequestParam(name = "email")String email, @RequestParam(name = "diachi") String diachi,
                                  @RequestParam(name = "cnnd")String cmnd)  {

        List<NhanVien>nhanViens=nhanVienService.LayDanhSachNhanVien();
        if (password.equals(passwordrepeat)){
            NhanVien nhanVien=new NhanVien();
            nhanVien.setManhanvien(nhanViens.size()+1);
            nhanVien.setTendangnhap(username);
            nhanVien.setEmail(email);
            nhanVien.setMatkhau(password);
            nhanVien.setCmnd(cmnd);
            nhanVien.setDiachi(diachi);
            nhanVienService.ThemNhanVien(nhanVien);
        }
        return  "dangnhap";
    }

}
