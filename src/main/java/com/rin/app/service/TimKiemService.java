package com.rin.app.service;

import com.rin.app.entity.SinhVien;
import com.rin.app.repository.SinhVienRepository;
import jakarta.persistence.criteria.Predicate;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class TimKiemService {
    SinhVienRepository sinhVienRepository;

    public List<SinhVien> timKiemCoBan(String soCNND, String hoTen, String email, String soDT, String diaChi) {
        Specification<SinhVien> specification =(root, query, criteriaBuilder) -> {
            List<Predicate> predicates = new ArrayList<>();
            if(soCNND!=null && !soCNND.isEmpty()){
                predicates.add(criteriaBuilder.like(root.get("soCMND"), "%" + soCNND + "%"));
            }
            if(hoTen!=null && !hoTen.isEmpty()){
                predicates.add(criteriaBuilder.like(root.get("hoTen"), "%" + hoTen + "%"));
            }
            if(email!=null && !email.isEmpty()){
                predicates.add(criteriaBuilder.like(root.get("email"), "%" + email + "%"));
            }
            if(soDT!=null && !soDT.isEmpty()){
                predicates.add(criteriaBuilder.like(root.get("soDT"), "%" + soDT + "%"));
            }
            if(diaChi!=null && !diaChi.isEmpty()){
                predicates.add(criteriaBuilder.like(root.get("diaChi"), "%" + diaChi + "%"));
            }
            return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
        };
        return  sinhVienRepository.findAll(specification);
    }

    public  SinhVien thongTinTotNghiep(String soCNND){
        return sinhVienRepository.findBySoCMND(soCNND).orElseThrow(()->new RuntimeException("Khong tim thay sinh vien"));
    }
}
