package com.rin.app.controller;

import com.rin.app.dto.request.SinhVienTotNghiepRequest;
import com.rin.app.entity.Nganh;
import com.rin.app.entity.Truong;
import com.rin.app.service.NganhService;
import com.rin.app.service.TotNghepService;
import com.rin.app.service.TruongService;
import jakarta.validation.Valid;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/SinhVienTotNghiep")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class SinhVienTotNghiepController {
    TotNghepService totNghepService;
    TruongService truongService;
    NganhService nganhService;

    @GetMapping("add")
    public String SinhVienTotNghiep(Model model) {
        List<Truong> truongs = truongService.getAllTruong();
        model.addAttribute("truongs", truongs);
        List<Nganh> nganhs = nganhService.getAllNganh();
        model.addAttribute("nganhs", nganhs);

        model.addAttribute("requestBody", new SinhVienTotNghiepRequest());
        return "SinhVienTotNghiep/add";
    }
    @PostMapping("add")
    public String addSinhVienTotNghiep(@Valid @ModelAttribute("requestBody") SinhVienTotNghiepRequest requestBody, BindingResult bindingResult,Model model
     ) {
        System.out.println("BindingResult has errors: " + bindingResult.hasErrors());
        if(bindingResult.hasErrors()) {
            System.out.println(bindingResult.getAllErrors());
            List<Truong> truongs = truongService.getAllTruong();
            model.addAttribute("truongs", truongs);
            List<Nganh> nganhs = nganhService.getAllNganh();
            model.addAttribute("nganhs", nganhs);
            model.addAttribute("requestBody", requestBody);
            return "SinhVienTotNghiep/add";
        }

       try {
           totNghepService.SinhVienTotNghiep(requestBody);
       }catch (Exception e) {
           List<Truong> truongs = truongService.getAllTruong();
           model.addAttribute("truongs", truongs);
           List<Nganh> nganhs = nganhService.getAllNganh();
           model.addAttribute("nganhs", nganhs);
           model.addAttribute("error", e.getMessage());
           return "SinhVienTotNghiep/add";
       }

        return "redirect:/";

    }

}
