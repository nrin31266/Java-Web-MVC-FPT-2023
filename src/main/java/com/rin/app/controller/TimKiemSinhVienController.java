package com.rin.app.controller;

import com.rin.app.entity.SinhVien;
import com.rin.app.service.TimKiemService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/TimKiem")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class TimKiemSinhVienController {

    TimKiemService timKiemService;

    @GetMapping("/TimKiemCoBan")
    public String timKiemSinhVien(
            Model model,
            @RequestParam(value = "soCMND", required = false) String soCNND,
            @RequestParam(value = "hoTen", required = false) String hoTen,
            @RequestParam(value = "email", required = false) String email,
            @RequestParam(value = "soDT", required = false) String soDT,
            @RequestParam(value = "diaChi", required = false) String diaChi
    ) {
        model.addAttribute("soCMND", soCNND);
        model.addAttribute("hoTen", hoTen);
        model.addAttribute("email", email);
        model.addAttribute("soDT", soDT);
        model.addAttribute("diaChi", diaChi);

        List<SinhVien> sinhViens = timKiemService.timKiemCoBan(soCNND, hoTen, email, soDT, diaChi);
        model.addAttribute("sinhViens", sinhViens);



        return "TimKiem/TimKiemCoBan";
    }

    @GetMapping("/ThongTinTotNghiep")
    public String thongTinTotNghiep(Model model,
                                    @RequestParam(value = "soCMND", required = false) String soCNND ) {
        if (soCNND != null) {
            model.addAttribute("soCMND", soCNND);
            try {
                SinhVien sinhVien = timKiemService.thongTinTotNghiep(soCNND);
                log.info(sinhVien.toString());
                model.addAttribute("sinhVien", sinhVien);
            }catch (Exception e){
                model.addAttribute("error", e.getMessage());
            }
        }



        return "TimKiem/ThongTinTotNghiep";
    }

}
