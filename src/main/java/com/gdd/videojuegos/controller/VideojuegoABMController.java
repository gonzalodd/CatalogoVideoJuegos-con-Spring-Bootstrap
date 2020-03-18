package com.gdd.videojuegos.controller;

import com.gdd.videojuegos.domain.Videojuego;
import com.gdd.videojuegos.service.DistribuidorService;
import com.gdd.videojuegos.service.VideojuegoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideojuegoABMController {
    
    public final DistribuidorService distribuidorService;
    public final VideojuegoService videojuegoService;

    public VideojuegoABMController(DistribuidorService distribuidorService, VideojuegoService videojuegoService) {
        this.distribuidorService = distribuidorService;
        this.videojuegoService = videojuegoService;
    }
    
    @RequestMapping("/videojuego/crear")
    public String mostrarFormAlta(Model model){
        model.addAttribute("distribuidores", distribuidorService.buscartodos());
        model.addAttribute("videojuego", new Videojuego());
        return "formVideojuego";
    }
    
    @PostMapping("/videojuegos/guardar")
    public String guardar(Videojuego videojuego){
        videojuegoService.guardar(videojuego);
        return "redirect:/";
    }
}
