package com.tranthanhbinh.service;

import com.tranthanhbinh.dao.DanhMucDao;
import com.tranthanhbinh.daoimp.DanhMucSanPhamImp;
import com.tranthanhbinh.entity.DanhMucSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DanhMucService implements DanhMucSanPhamImp {
    @Autowired
    DanhMucDao danhMucDao;

    @Override
    public List<DanhMucSanPham> DanhMucSanPham() {
        List<DanhMucSanPham>DanhMucList=danhMucDao.DanhMucSanPham();
        return DanhMucList;
    }
}
