package com.rin.app.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.ArrayList;
import java.util.List;

@Table(name = "SINHVIEN")
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@ToString(exclude = {"totNghieps", "congViecs"})
public class SinhVien {
    @Id
    String soCMND;
    String hoTen;
    String email;
    String soDT;
    String diaChi;




    @OneToMany(mappedBy = "sinhVien", cascade = CascadeType.ALL, orphanRemoval = true)
    List<TotNghiep> totNghieps = new ArrayList<>();


    @OneToMany(mappedBy = "sinhVien", cascade = CascadeType.ALL, orphanRemoval = true)
    List<CongViec> congViecs = new ArrayList<>();
}
