package br.com.malu.evento.eventoapp.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.malu.evento.eventoapp.DAO.ConvidadosDAO;
import br.com.malu.evento.eventoapp.DAO.EventoDAO;
import br.com.malu.evento.eventoapp.db.Convidados;
import br.com.malu.evento.eventoapp.db.Database;

@Controller
public class EventoController {

	@Autowired
	private EventoDAO ed;
	
	@Autowired
	private ConvidadosDAO cd;
	
	@RequestMapping(value="/cadastrarEvento", method=RequestMethod.GET)
	public String form() {
		return "formEvento";
		
	}

	@RequestMapping(value="/cadastrarEvento", method=RequestMethod.POST)
	public String form(Database database) {
		
		ed.save(database);
		
		return "redirect:/cadastrarEvento";
		
	}
	
	@RequestMapping("/eventos")
	public ModelAndView listaEventos(){
		ModelAndView mv = new ModelAndView("/index");
		Iterable<Database> eventos = ed.findAll();	
		mv.addObject("eventos", eventos);
		return mv;
	}

	@RequestMapping(value="/{codigo}", method=RequestMethod.GET)
	public ModelAndView detalhesEvento(@PathVariable("codigo") long codigo) {
		Database evento = ed.findByCodigo(codigo);
		ModelAndView mv = new ModelAndView("/detalhesEvento");
		mv.addObject("evento", evento);
		Iterable<Convidados> convidado = cd.findByDatabase(evento);
		mv.addObject("convidados", convidado);
		return mv;	
	}
	
	@RequestMapping("/deletarEvento/{codigo}")
	public String deletarEvento(@PathVariable("codigo") long codigo){
		Database evento = ed.findByCodigo(codigo);
		ed.delete(evento);
		return "redirect:/eventos";
	}
	
	@RequestMapping("deletarConvidado/{rg}")
	public String deletarConvidado(@PathVariable("rg") String rg) {
		Convidados convidado = cd.findByRg(rg);
		cd.delete(convidado);
		
		Database evento =convidado.getDatabase();
		long codigoLong = evento.getCodigo();
		String codigo = "" + codigoLong;
		return "redirect:/" + codigo;
		
	}	
	@RequestMapping(value="/{codigo}", method=RequestMethod.POST)
	public String detalhesEvento(@PathVariable("codigo") long codigo, @Valid Convidados convidados, BindingResult result, RedirectAttributes attributes) {
		Database evento = ed.findByCodigo(codigo);
		convidados.setDatabase(evento);
		cd.save(convidados);
		return "redirect:/{codigo}";
	}
	
}
	
