package br.com.malu.evento.eventoapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String paginaInicial() {
		return "paginaInicial";
		
	}
	
}
