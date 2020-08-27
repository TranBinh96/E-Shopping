package com.tranthanhbinh.service;

import com.tranthanhbinh.dao.SanPhamDao;
import com.tranthanhbinh.daoimp.Sanphamimp;
import com.tranthanhbinh.entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SanPhamService implements Sanphamimp {
    @Autowired
    SanPhamDao sanPhamDao;
    @Override
    public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
        List<SanPham>listsv=sanPhamDao.LayDanhSachSanPhamLimit(spbatdau);
        return listsv;
    }

    @Override
    public SanPham ChitietSanpham(int masanpham) {
        SanPham sanPham=sanPhamDao.ChitietSanpham(masanpham);
        return sanPham;
    }

    @Override
    public List<SanPham> LaySanPhamTheoMaDanhMuc(int madanhmuc) {
        List<SanPham>listsv=sanPhamDao.LaySanPhamTheoMaDanhMuc(madanhmuc);
        return listsv;
    }


}
