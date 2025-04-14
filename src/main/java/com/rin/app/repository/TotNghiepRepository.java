package com.rin.app.repository;

import com.rin.app.entity.TotNghiep;
import com.rin.app.entity.TotNghiepId;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface TotNghiepRepository extends JpaRepository<TotNghiep, TotNghiepId> {

}
