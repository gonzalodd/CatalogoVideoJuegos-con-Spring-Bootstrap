package com.gdd.videojuegos.service;

import com.gdd.videojuegos.domain.Distribuidor;
import com.gdd.videojuegos.repository.DistribuidorRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class DistribuidorService {
    
    private final DistribuidorRepository distribuidorRepository;

    public DistribuidorService(DistribuidorRepository distribuidorRepository) {
        this.distribuidorRepository = distribuidorRepository;
    }

    public List<Distribuidor> buscartodos(){
        return distribuidorRepository.findAll();
    }
    
}
