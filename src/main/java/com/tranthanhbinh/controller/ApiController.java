package com.tranthanhbinh.controller;

import com.tranthanhbinh.entity.GioHang;
import com.tranthanhbinh.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@Controller
@RequestMapping("/api")
@SessionAttributes({"username","giohang"})
public class ApiController {

    @Autowired
    NhanVienService nhanVienService;


    @PostMapping("/kiemtradangnhap")
    @ResponseBody
    public  String KiemTraDangNhap(@RequestParam String username , @RequestParam String password , ModelMap modelMap) {
        boolean kiemtra = nhanVienService.kiemtradangnhap(username, password);
        modelMap.addAttribute("username",username);
        return  ""+kiemtra;
    }
    @GetMapping("/capnhatgiohang")
    @ResponseBody
    public  void CapNhatGioHang(HttpSession httpSession,@RequestParam  int soluong, @RequestParam  int masp, @RequestParam int mamau, @RequestParam int masize){
        if(null !=httpSession.getAttribute("giohang")){
            List<GioHang> gioHangList= (List<GioHang>) httpSession.getAttribute("giohang");
            int vt =KiemTraSanPhamDaTonGioHang(gioHangList ,masp,masize,mamau);
            gioHangList.get(vt).setSoluong(soluong);
        }
    }

    @GetMapping("/xoasanphamgiohang")
    @ResponseBody
    public  void XoaSanPhamGioHang(HttpSession httpSession, @RequestParam  int masp, @RequestParam int mamau, @RequestParam int masize){
        if(null !=httpSession.getAttribute("giohang")){
            List<GioHang> gioHangList= (List<GioHang>) httpSession.getAttribute("giohang");
            int vt =KiemTraSanPhamDaTonGioHang(gioHangList ,masp,masize,mamau);
            gioHangList.remove(vt);
        }
    }

    @GetMapping("/LaySoLuongGioHang")
    @ResponseBody
    public String LaySoLuongGioHang(HttpSession httpSession){
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            return gioHangs.size() + "";
        }
        return "";
    }
    @GetMapping("/ThemGioHang")
    @ResponseBody
    public String ThemGioHang(@RequestParam int masp, @RequestParam int masize,@RequestParam int mact,
     @RequestParam  int mamau, @RequestParam  String tensp,@RequestParam  String giatien, @RequestParam String tenmau,@RequestParam  String tensize,
     @RequestParam  int soluong, ModelMap map,HttpSession httpSession){

        if (null == httpSession.getAttribute("giohang")){
            List<GioHang> gioHangList=new ArrayList<>();
            GioHang gioHang=new GioHang();
            gioHang.setMamau(mamau);
            gioHang.setMasize(masize);
            gioHang.setMasp(masp);
            gioHang.setTenmau(tenmau);
            gioHang.setSoluong(1);
            gioHang.setGiatien(giatien);
            gioHang.setTensp(tensp);
            gioHang.setTensize(tensize);
            gioHangList.add(gioHang);
            gioHang.setMachitiet(mact);
            httpSession.setAttribute("giohang",gioHangList);

            return  gioHangList.size()+"";

        }else {
            List<GioHang> gioHangList= (List<GioHang>) httpSession.getAttribute("giohang");
            int vt =KiemTraSanPhamDaTonGioHang(gioHangList ,masp,masize,mamau);
            if (vt==-1){
                GioHang gioHang=new GioHang();
                gioHang.setMamau(mamau);
                gioHang.setMasize(masize);
                gioHang.setMasp(masp);
                gioHang.setTenmau(tenmau);
                gioHang.setSoluong(1);
                gioHang.setGiatien(giatien);
                gioHang.setTensp(tensp);
                gioHang.setTensize(tensize);
                gioHang.setMachitiet(mact);
                gioHangList.add(gioHang);

            }else {
                int soluongmoi=gioHangList.get(vt).getSoluong()+1;
                gioHangList.get(vt).setSoluong(soluongmoi);
            }
            return  gioHangList.size()+"";
        }
    }
    private int KiemTraSanPhamDaTonGioHang(List<GioHang> gioHangList, int masp, int masize, int mamau) {
        for(int i=0;i<gioHangList.size();i++){
            if(gioHangList.get(i).getMasp()==masp && gioHangList.get(i).getMasize()==masize && gioHangList.get(i).getMamau()==mamau){
                return i;
            }
        }
        return  -1;
    }





}
