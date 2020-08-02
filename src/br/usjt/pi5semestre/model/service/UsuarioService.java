package br.usjt.pi5semestre.model.service;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.pi5semestre.model.dao.UsuarioDAO;
import br.usjt.pi5semestre.model.entity.Usuario;

@Service
public class UsuarioService {
	
private UsuarioDAO dao;
	
	@Autowired
	public UsuarioService(UsuarioDAO Udao) {
		dao = Udao;
	}
	
	
	public Usuario buscarUsuario(int id) throws IOException{
		return dao.buscarUsuario(id);
	}
	
	
	@Transactional
	public Usuario inserirUsuario(Usuario usuario) throws IOException {
		int id = dao.inserirUsuario(usuario);
		usuario.setIdUsuario(id);
		return usuario;
	}
	

	@Transactional
	public void excluirUsuario(Usuario usuario) throws IOException {
		dao.removerUsuario(usuario);
	}
	
	@Transactional
	public void atualizarUsuario(Usuario usuario) throws IOException {
		dao.atualizarUsuario(usuario);
	}

	public List<Usuario> listarUsuario() throws IOException{
		return dao.listarUsuario();
	}
	
	public Usuario Login(Usuario usuario) throws IOException{
		return dao.Login(usuario);
	}

}
