package com.tranthanhbinh.daoimp;

import com.tranthanhbinh.entity.NhanVien;

import java.util.List;

public interface NhanVienDaoimp {
    boolean kiemtradangnhap(String username,String password);
    boolean ThemNhanVien(NhanVien nhanVien);
    List<NhanVien> LayDanhSachNhanVien();
}
