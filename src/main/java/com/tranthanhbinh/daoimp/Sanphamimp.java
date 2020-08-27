package com.tranthanhbinh.daoimp;

import com.tranthanhbinh.entity.SanPham;

import java.util.List;

public interface Sanphamimp {
    List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
    SanPham ChitietSanpham(int masanpham);
    List<SanPham> LaySanPhamTheoMaDanhMuc(int madanhmuc);

}
