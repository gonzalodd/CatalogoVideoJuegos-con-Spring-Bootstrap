package com.gdd.videojuegos.repository;

import com.gdd.videojuegos.domain.Videojuego;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface VideojuegoRepository extends JpaRepository<Videojuego, Integer>{
    
    // @Query(value = "select * from Videojuego order by nombre", nativeQuery = true) QUERY CON SQL
    @Query("from Videojuego v order by v.nombre") // QUERY CON JPQL
    List<Videojuego> buscarTodos();
    
    @Query("from Videojuego v where v.distribuidor.id = ?1 order by v.nombre") // ?1 hace referencia la primer parametro
    List<Videojuego> buscarPorDistribuidor(int distribuidorId);
    
    List<Videojuego> findByNombreContaining(String consulta); // forma alternativa de hacer consultas
    
}
