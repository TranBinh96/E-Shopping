package com.tranthanhbinh.service;

import com.tranthanhbinh.dao.HoaDonDao;
import com.tranthanhbinh.daoimp.HoaDonDaoImpl;
import com.tranthanhbinh.entity.HoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HoaDonServices  implements HoaDonDaoImpl {

    @Autowired
    HoaDonDao hoaDonDao;
    @Override
    public int ThemHoaDon(HoaDon hoaDon) {
        return  hoaDonDao.ThemHoaDon(hoaDon);

    }
}
