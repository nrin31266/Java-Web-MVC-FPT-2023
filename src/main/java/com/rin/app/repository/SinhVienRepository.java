package com.rin.app.repository;

import com.rin.app.entity.SinhVien;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.Optional;

public interface SinhVienRepository extends JpaRepository<SinhVien, String>, JpaSpecificationExecutor<SinhVien> {
    Optional<SinhVien> findBySoCMND(String soCMND);
}
