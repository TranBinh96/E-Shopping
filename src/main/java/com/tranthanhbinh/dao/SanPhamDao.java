package com.tranthanhbinh.dao;

import com.tranthanhbinh.daoimp.Sanphamimp;
import com.tranthanhbinh.entity.ChiTietSanPham;
import com.tranthanhbinh.entity.NhanVien;
import com.tranthanhbinh.entity.SanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDao implements Sanphamimp {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
        Session session = sessionFactory.getCurrentSession();
        List<SanPham> listsp = (List<SanPham>) session.createQuery("from  SANPHAM ").setFirstResult(spbatdau).setMaxResults(20).getResultList();

        return listsp;
    }

    @Override
    @Transactional
    public SanPham ChitietSanpham(int masanpham) {
        Session session= sessionFactory.getCurrentSession();
        String sql="from  SANPHAM sp where sp.masanpham="+masanpham+"  ";
        SanPham  sanPham=(SanPham) session.createQuery(sql).getSingleResult();

        return sanPham;
    }

    @Override
    @Transactional
    public List<SanPham> LaySanPhamTheoMaDanhMuc(int madanhmuc) {
        Session session= sessionFactory.getCurrentSession();
        String sql="from  SANPHAM as s  where s.danhmucsanpham.madanhmuc= "+madanhmuc;
        List<SanPham> list=session.createQuery(sql).getResultList();

        return list;
    }
}
