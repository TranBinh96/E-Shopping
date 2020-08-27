package com.tranthanhbinh.dao;
import com.tranthanhbinh.daoimp.NhanVienDaoimp;
import com.tranthanhbinh.entity.NhanVien;
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
public class NhanVienDao implements NhanVienDaoimp{
    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public boolean kiemtradangnhap(String username, String password)  {
        Session session=sessionFactory.getCurrentSession();
        try {
            String sql="from nhanvien where tendangnhap='"+username+"'and matkhau= '"+password+"'";
            NhanVien nhanVien= (NhanVien) session.createQuery( sql).getSingleResult();
            if(nhanVien  !=null)
                return true;
            else
                return false;
        }catch (Exception e){
            return false;
        }
    }

    @Override
    @Transactional
    public boolean ThemNhanVien(NhanVien nhanVien) {
        Session session=sessionFactory.getCurrentSession();
       int manhanvien= (int) session.save(nhanVien);
        System.out.println(manhanvien+"");

        return false;
    }

    @Override
    @Transactional
    public List<NhanVien> LayDanhSachNhanVien() {
        Session session=sessionFactory.getCurrentSession();
        String sql="from nhanvien ";
        List<NhanVien> listnv=session.createQuery(sql).getResultList();
        System.out.println("Danh Sach Nhan Vien" +listnv.size());

        return  listnv;

    }
}
