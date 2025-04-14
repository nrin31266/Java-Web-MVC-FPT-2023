package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Table(name = "CONG_VIEC")
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@IdClass(CongViecId.class)
public class CongViec {
    @Id
    String soCMND;
    @Id
    LocalDateTime ngayVaoCongTy;

    @JoinColumn(name = "sinhVienId")
    @ManyToOne
    SinhVien sinhVien;


    
    @ManyToOne
    Nganh maNganh;
    String tenCongViec;
    String tenCongTy;
    String diaChiCongViec;
    String thoiGianLamViec;
}
