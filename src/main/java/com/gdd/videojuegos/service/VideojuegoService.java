package com.gdd.videojuegos.service;

import com.gdd.videojuegos.domain.Videojuego;
import com.gdd.videojuegos.repository.VideojuegoRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class VideojuegoService {
    
    private final VideojuegoRepository videojuegoRepository;

    public VideojuegoService(VideojuegoRepository videojuegoRepository) {
        this.videojuegoRepository = videojuegoRepository;
    }
    
    public List<Videojuego> buscarDestacados(){
        return videojuegoRepository.buscarTodos();
    }
    
    public List<Videojuego> buscarPorDistribuidor(int distribuidorId){
        return videojuegoRepository.buscarPorDistribuidor(distribuidorId);
    }
    
    public List<Videojuego> buscar(String consulta){
        return videojuegoRepository.findByNombreContaining(consulta);
    }
    
    public Videojuego guardar(Videojuego videojuego){
        return videojuegoRepository.save(videojuego);
    }
}
