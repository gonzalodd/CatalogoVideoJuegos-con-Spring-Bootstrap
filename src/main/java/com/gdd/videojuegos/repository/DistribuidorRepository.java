package com.gdd.videojuegos.repository;

import com.gdd.videojuegos.domain.Distribuidor;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DistribuidorRepository extends JpaRepository<Distribuidor, Integer>{
    
    
}
