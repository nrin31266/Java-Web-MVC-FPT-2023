package com.rin.app.mapper;

import com.rin.app.dto.request.SinhVienTotNghiepRequest;
import com.rin.app.entity.SinhVien;
import com.rin.app.entity.TotNghiep;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AppMapper {
    SinhVien toSinhVien(SinhVienTotNghiepRequest request);
    TotNghiep toTotNghiep(SinhVienTotNghiepRequest request);
}
