package com.tranthanhbinh.service;

import com.tranthanhbinh.dao.ChiTietHoaDonDao;
import com.tranthanhbinh.daoimp.ChiTietHoaDonDaoImp;
import com.tranthanhbinh.entity.ChiTietHoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiTietHoaDonService  implements ChiTietHoaDonDaoImp {

    @Autowired
    ChiTietHoaDonDao chiTietHoaDonDao;

    @Override
    public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
        return chiTietHoaDonDao.ThemChiTietHoaDon(chiTietHoaDon);
    }
}
