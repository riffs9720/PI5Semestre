package br.usjt.pi5semestre.model.dao;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.commons.dbcp.ConnectionFactory;
import org.springframework.stereotype.Repository;

import br.usjt.pi5semestre.model.entity.Demanda;
import br.usjt.pi5semestre.model.entity.Projeto;
import br.usjt.pi5semestre.model.entity.Usuario;



@Repository
public class UsuarioDAO {
	
	@PersistenceContext
	EntityManager manager;
	

	public Usuario buscarUsuario(int id) throws IOException{
		return manager.find(Usuario.class, id);
		
	}
	
	public int inserirUsuario(Usuario usuario) throws IOException {
		manager.persist(usuario);
		return usuario.getIdUsuario();
	}
	
	public void atualizarUsuario(Usuario usuario) throws IOException{
		System.out.println(usuario);
		manager.merge(usuario);
	}
	public void removerUsuario(Usuario usuario) throws IOException {
		manager.remove(manager.find(Usuario.class, usuario.getIdUsuario()));
	}
	
	public List<Usuario> listarUsuario() throws IOException {
		return manager.createQuery("select u from Usuario u").getResultList();
	}
	
	public Usuario Login(Usuario usuario) throws IOException {
		try {
			Usuario query = (Usuario) manager
					.createQuery(
							"SELECT u FROM Usuario u WHERE email = :email AND senha = :senha", Usuario.class)
					.setParameter("email", usuario.getEmail())
					.setParameter("senha", usuario.getSenha()).getSingleResult();
			return query;
		} catch (NoResultException e) {
			return null;
		}
	}
		
}
	
	
	