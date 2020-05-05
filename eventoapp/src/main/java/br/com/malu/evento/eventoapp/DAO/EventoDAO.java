package br.com.malu.evento.eventoapp.DAO;

import org.springframework.data.repository.CrudRepository;

import br.com.malu.evento.eventoapp.db.Database;

public interface EventoDAO extends CrudRepository<Database, String>{

	Database findByCodigo(long codigo);
	

}