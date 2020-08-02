package br.usjt.pi5semestre.model.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.usjt.pi5semestre.model.entity.Demanda;
import br.usjt.pi5semestre.model.entity.Recursos;


@Repository
public class DemandaDAO {
	
	@PersistenceContext
	EntityManager manager;
	
	
	@Transactional
	public int inserirDemanda(Demanda demanda) throws IOException {
		manager.persist(demanda);
		return demanda.getIdDemanda();
	}
	
	@Transactional
	public int inserirComentario(Recursos recursos) throws IOException {
		manager.persist(recursos);
		return recursos.getIdRecursos();
	}

	public Demanda buscarDemanda(int id) throws IOException{
		return manager.find(Demanda.class, id);
	}
	
	public void atualizarDemanda(Demanda demanda) throws IOException{
		manager.merge(demanda);
	}
	public void removerDemanda(Demanda demanda) throws IOException {
		manager.remove(manager.find(Demanda.class, demanda.getIdDemanda()));
	}
	
	@SuppressWarnings("unchecked")
	public List<Demanda> listarDemandas(Integer idProjeto) throws IOException {
		
		//String jpql = "select d from Demanda d where d.idProjeto like :idProjeto";
		String jpql ="SELECT d FROM Demanda d join d.projeto p WHERE p.idProjeto like :idProjeto";
		
		Query query = manager.createQuery(jpql);
		query.setParameter("idProjeto", idProjeto);

		List<Demanda> result = query.getResultList();
		return result;

	}
	
	
	@SuppressWarnings("unchecked")
	public List<Demanda> listarDemandaAnalista(Integer idUsuario) throws IOException {
		
		//String jpql = "select d from Demanda d where d.idUsuario like :idUsuario";
		String jpql ="SELECT d FROM Demanda d join d.usuario p WHERE p.idUsuario like :idUsuario";
		
		Query query = manager.createQuery(jpql);
		query.setParameter("idUsuario", idUsuario);

		List<Demanda> result = query.getResultList();
		return result;

	}
	
	@SuppressWarnings("unchecked")
	public List<Demanda> VisualizarDemandaDois(Integer idDemanda) throws IOException{
		String jpql = "SELECT d from Demanda d WHERE d.idDemanda like :idDemanda";
		Query query = manager.createQuery(jpql);
		query.setParameter("idDemanda", idDemanda);
		List<Demanda> result = query.getResultList();
		return result;
	}
	
	public List<Demanda> listarDemanda() throws IOException {
		return manager.createQuery("select d from Demanda d").getResultList();
	}
}
