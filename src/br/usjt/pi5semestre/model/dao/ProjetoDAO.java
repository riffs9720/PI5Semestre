package br.usjt.pi5semestre.model.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.usjt.pi5semestre.model.entity.Projeto;



@Repository
public class ProjetoDAO {
	
	@PersistenceContext
	EntityManager manager;
	
	public int inserirProjeto(Projeto projeto) throws IOException {
		manager.persist(projeto);
		return projeto.getIdProjeto();
	}

	public Projeto buscarProjeto(int id) throws IOException{
		return manager.find(Projeto.class, id);
	}
	
	public void atualizarProjeto(Projeto projeto) throws IOException{
		System.out.println(projeto);
		manager.merge(projeto);
	}
	public void removerProjeto(Projeto projeto) throws IOException {
		manager.remove(manager.find(Projeto.class, projeto.getIdProjeto()));
	}


	public List<Projeto> listarProjeto(String chave) throws IOException {
		
		String jpql = "select p from Projeto p where p.nomeProjeto like :chave";
		
		Query query = manager.createQuery(jpql);
		query.setParameter("chave", "%"+chave+"%");

		List<Projeto> result = query.getResultList();
		return result;
	}
	
	public List<Projeto> listarProjeto() throws IOException {
		return manager.createQuery("select p from Projeto p").getResultList();
	}
}
