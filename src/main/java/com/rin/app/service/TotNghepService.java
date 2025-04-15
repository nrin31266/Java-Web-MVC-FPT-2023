package com.rin.app.service;

import com.rin.app.dto.request.SinhVienTotNghiepRequest;
import com.rin.app.entity.*;
import com.rin.app.mapper.AppMapper;
import com.rin.app.repository.NganhRepository;
import com.rin.app.repository.SinhVienRepository;
import com.rin.app.repository.TotNghiepRepository;
import com.rin.app.repository.TruongRepository;
import jakarta.transaction.Transactional;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class TotNghepService {
    SinhVienRepository sinhVienRepository;
    TotNghiepRepository totNghiepRepository;
    AppMapper appMapper;
    NganhRepository nganhRepository;
    TruongRepository truongRepository;

    @Transactional
    public void SinhVienTotNghiep(SinhVienTotNghiepRequest request){
        SinhVien sinhVien = sinhVienRepository.findById(request.getSoCMND()).orElse(null);
        Nganh nganh = nganhRepository.findById(request.getMaNganh()).orElseThrow(()->new RuntimeException("Nganh khong ton tai"));
        Truong truong = truongRepository.findById(request.getMaTruong()).orElseThrow(()->new RuntimeException("Truong khong ton tai"));
        if(sinhVien != null){
            TotNghiep totNghiep = totNghiepRepository.findById(new TotNghiepId(request.getSoCMND(),
                    request.getMaTruong(), request.getMaNganh())).orElse(null);
            if(totNghiep != null){
                throw new RuntimeException("Sinh vien da tot nghiep nganh nay cua truong nay roi");
            }

        }else{
            sinhVien = appMapper.toSinhVien(request);
        }
        TotNghiep newTotNghiep = appMapper.toTotNghiep(request);
        newTotNghiep.setSinhVien(sinhVien);
        newTotNghiep.setTruong(truong);
        newTotNghiep.setNganh(nganh);


        sinhVien.getTotNghieps().add(newTotNghiep);
        sinhVienRepository.save(sinhVien);
    }


}
