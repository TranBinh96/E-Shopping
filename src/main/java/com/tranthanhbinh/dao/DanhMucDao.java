package com.tranthanhbinh.dao;

import com.tranthanhbinh.daoimp.DanhMucSanPhamImp;
import com.tranthanhbinh.entity.DanhMucSanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Repository
@Scope(proxyMode =  ScopedProxyMode.TARGET_CLASS)
public class DanhMucDao implements DanhMucSanPhamImp {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    @Transactional
    public List<DanhMucSanPham> DanhMucSanPham() {
        Session session=sessionFactory.getCurrentSession();
        String sql="from DANHMUCSANPHAM";
        List<DanhMucSanPham>listdanhmucsanpham=session.createQuery(sql).getResultList();
        return listdanhmucsanpham;
    }
}
