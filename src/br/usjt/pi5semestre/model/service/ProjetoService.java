package br.usjt.pi5semestre.model.service;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.pi5semestre.model.dao.ProjetoDAO;
import br.usjt.pi5semestre.model.entity.Projeto;



@Service
public class ProjetoService {
private ProjetoDAO dao;
	
	@Autowired
	public ProjetoService(ProjetoDAO Pdao) {
		dao = Pdao;
	}
	
	public Projeto buscarProjeto(int id) throws IOException{
		return dao.buscarProjeto(id);
	}
	
	
	@Transactional
	public Projeto inserirProjeto(Projeto projeto) throws IOException {
		int id = dao.inserirProjeto(projeto);
		projeto.setIdProjeto(id);
		return projeto;
	}
	
	@Transactional
	public void excluirProjeto(Projeto projeto) throws IOException {
		dao.removerProjeto(projeto);
	}
	
	@Transactional
	public void atualizarProjeto(Projeto projeto) throws IOException {
		dao.atualizarProjeto(projeto);
	}

	public List<Projeto> listarProjetos(String chave) throws IOException{
		return dao.listarProjeto(chave);
	}

	public List<Projeto> listarProjetos() throws IOException{
		return dao.listarProjeto();
	}

}
