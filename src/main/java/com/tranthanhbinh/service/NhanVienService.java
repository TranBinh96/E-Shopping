package com.tranthanhbinh.service;

import com.tranthanhbinh.dao.NhanVienDao;
import com.tranthanhbinh.daoimp.NhanVienDaoimp;
import com.tranthanhbinh.entity.NhanVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NhanVienService implements NhanVienDaoimp {
    @Autowired
    NhanVienDao nhanVienDao;


    public boolean kiemtradangnhap(String username, String password) {
        boolean kiemtra=nhanVienDao.kiemtradangnhap(username,password);
        return  kiemtra;
    }

    @Override
    public boolean ThemNhanVien(NhanVien nhanVien) {
        boolean ktThemNhanVien=nhanVienDao.ThemNhanVien(nhanVien);
        return ktThemNhanVien;
    }

    @Override
    public List<NhanVien> LayDanhSachNhanVien() {
        List<NhanVien> listnv=nhanVienDao.LayDanhSachNhanVien();
        return listnv;
    }


}
