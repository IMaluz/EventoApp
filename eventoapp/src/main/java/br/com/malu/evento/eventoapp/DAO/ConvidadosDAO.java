package br.com.malu.evento.eventoapp.DAO;

import org.springframework.data.repository.CrudRepository;

import br.com.malu.evento.eventoapp.db.Convidados;
import br.com.malu.evento.eventoapp.db.Database;

public interface ConvidadosDAO extends CrudRepository<Convidados, String>{
	Iterable<Convidados> findByDatabase (Database database);
	Convidados findByRg (String rg);
}
