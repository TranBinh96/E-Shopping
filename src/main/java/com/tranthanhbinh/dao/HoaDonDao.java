package com.tranthanhbinh.dao;

import com.tranthanhbinh.daoimp.HoaDonDaoImpl;
import com.tranthanhbinh.entity.HoaDon;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDao implements HoaDonDaoImpl {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public int ThemHoaDon(HoaDon hoaDon) {
        Session  session=sessionFactory.getCurrentSession();
        int id= (int) session.save(hoaDon);
        if (0 < id ){
            return id;
        }else {
            return 0;
        }

    }
}
