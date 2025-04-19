package com.rin.app.dto.request;

import jakarta.validation.constraints.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;

import java.time.LocalDate;
import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class SinhVienTotNghiepRequest {
    @NotBlank(message = "So CMND la bac buoc")
    String soCMND;

    String hoTen;
    String email;
    String soDT;
    String diaChi;

    @NotBlank(message = "Ma Truong la bac buoc")
    String maTruong;
    @NotBlank(message = "Ma Nganh la bac buoc")
    String maNganh;
    String heTN;

//    @NotNull(message = "Ngày tốt nghiệp là bắt buộc")
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    @PastOrPresent(message = "Ngày tốt nghiệp không được nằm trong tương lai")
//    LocalDate ngayTN;

    @NotNull(message = "Ngày tốt nghiệp là bắt buộc")
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    @PastOrPresent(message = "Ngày tốt nghiệp không được nằm trong tương lai")
    LocalDateTime ngayTN;


    String loaiTN;
}
