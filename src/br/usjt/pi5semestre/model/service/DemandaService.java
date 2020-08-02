package br.usjt.pi5semestre.model.service;

import java.io.IOException;
import java.util.List;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.usjt.pi5semestre.model.dao.DemandaDAO;
import br.usjt.pi5semestre.model.entity.Demanda;
import br.usjt.pi5semestre.model.entity.Recursos;


@Service
public class DemandaService {
private DemandaDAO dao;
	
	@Autowired
	public DemandaService(DemandaDAO Ddao) {
		dao = Ddao;
	}
	
	
	
	public Demanda buscarDemanda(int id) throws IOException{
		return dao.buscarDemanda(id);
	}
	
	@Transactional
	public Demanda inserirDemanda(Demanda demanda) throws IOException {
		int id = dao.inserirDemanda(demanda);
		demanda.setIdDemanda(id);
		return demanda;
	}
	
	@Transactional
	public Recursos inserirComentario(Recursos recursos) throws IOException {
		int id = dao.inserirComentario(recursos);
		recursos.setIdRecursos(id);
		return recursos;
	}
	
	
	@Transactional
	public void excluirDemanda(Demanda demanda) throws IOException {
		dao.removerDemanda(demanda);
	}
	
	@Transactional
	public void atualizarDemanda(Demanda demanda) throws IOException {
		dao.atualizarDemanda(demanda);
	}

	public List<Demanda> listarDemandas(Integer idProjeto) throws IOException{
		return dao.listarDemandas(idProjeto);
	}

	public List<Demanda> listarDemandaAnalista(Integer idUsuario) throws IOException{
		return dao.listarDemandaAnalista(idUsuario);
	}
	
	public List<Demanda> listarDemandas() throws IOException{
		return dao.listarDemanda();
	}
}
