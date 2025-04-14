package com.rin.app.service;

import com.rin.app.entity.Truong;
import com.rin.app.repository.TruongRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class TruongService {
    TruongRepository truongRepository;
    public List<Truong> getAllTruong() {
        return truongRepository.findAll();
    }
}
