package com.tranthanhbinh.controller;

import com.tranthanhbinh.daoimp.ChiTietHoaDonDaoImp;
import com.tranthanhbinh.entity.*;
import com.tranthanhbinh.service.ChiTietHoaDonService;
import com.tranthanhbinh.service.HoaDonServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/giohang")
public class GioHangController {
    @GetMapping
    public  String Deafault(HttpSession httpSession, ModelMap map){

        if (httpSession.getAttribute("giohang" )!= null){
            List<GioHang>gioHangs= (List<GioHang>) httpSession.getAttribute("giohang");
            map.addAttribute("giohang",gioHangs);
            map.addAttribute("soluonggiohang",gioHangs.size());

        }
        if (httpSession.getAttribute("username") != null){
            String ten= (String) httpSession.getAttribute("username");
            String chucaidau=ten.substring(0,1).toUpperCase();
            map.addAttribute("user",chucaidau);
        }
        return "giohang";
    }

    @Autowired
    HoaDonServices hoaDonServices;

    @Autowired
    ChiTietHoaDonService chiTietHoaDonService;

    @PostMapping
    public  String ThemDonHang(HttpSession httpSession,@RequestParam String tennguoinhan,@RequestParam String dienthoailienlac ,@RequestParam String phuongthucgiahang,
                            @RequestParam String diachinhanhang, @RequestParam String ghichu ){
        if (null != httpSession.getAttribute("giohang" )){
            List<GioHang>gioHangs= (List<GioHang>) httpSession.getAttribute("giohang");
            HoaDon hoaDon=new HoaDon();
            hoaDon.setTenkhachhang(tennguoinhan);
            hoaDon.setSodt(dienthoailienlac);
            hoaDon.setHinhthucgiaohang(phuongthucgiahang);
            hoaDon.setDiachigiaohang(diachinhanhang);
            hoaDon.setGhichu(ghichu);

            int idHoaDon= hoaDonServices.ThemHoaDon(hoaDon);
            if(idHoaDon > 0){
                for (GioHang gioHang : gioHangs) {
                    ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
                    chiTietHoaDonId.setMachitietsanpham(gioHang.getMachitiet());
                    chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());

                    ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
                    chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
                    chiTietHoaDon.setGiatien(gioHang.getGiatien().toString());
                    chiTietHoaDon.setSoluong(gioHang.getSoluong());

                    chiTietHoaDonService.ThemChiTietHoaDon(chiTietHoaDon);
                    httpSession.removeAttribute("giohang");
                }
            }else{
                System.out.println("Them tb");
            };
        }

        return  "giohang";
    }
}
