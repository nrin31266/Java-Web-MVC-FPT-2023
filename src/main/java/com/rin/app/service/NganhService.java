package com.rin.app.service;

import com.rin.app.entity.Nganh;
import com.rin.app.repository.NganhRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class NganhService {
    NganhRepository nganhRepository;

    public List<Nganh> getAllNganh() {
        return nganhRepository.findAll();
    }
}
