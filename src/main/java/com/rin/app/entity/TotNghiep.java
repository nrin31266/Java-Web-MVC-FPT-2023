package com.rin.app.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Table(name = "TOT_NGHIEP")
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@IdClass(TotNghiepId.class)
public class TotNghiep {

    @Id
    private String soCMND;
    @Id
    private String maTruong;
    @Id
    private String maNganh;

    @JsonBackReference
    @ManyToOne
    private SinhVien sinhVien;

    @ManyToOne
    private Truong truong;

    @ManyToOne
    private Nganh nganh;

    String heTN;

    LocalDate ngayTN;

    String loaiTN;


}
