package br.usjt.pi5semestre.model.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.usjt.pi5semestre.model.entity.Cliente;



@Repository
public class ClienteDAO {
	@PersistenceContext
	EntityManager manager;

	
	
	@Transactional
	public int inserirCliente(Cliente cliente) throws IOException {
		manager.persist(cliente);
		return cliente.getIdCliente();
	}

	public Cliente buscarCliente(int id) throws IOException {
		return manager.find(Cliente.class, id);
	}

	public void atualizarCliente(Cliente cliente) throws IOException {
		System.out.println(cliente);
		manager.merge(cliente);
	}

	public void removerCliente(Cliente cliente) throws IOException {
		manager.remove(manager.find(Cliente.class, cliente.getIdCliente()));
	}

	public List<Cliente> listarClientes(String chave) throws IOException {

		String jpql = "select c from Cliente c where c.razaoSocial like :chave";

		Query query = manager.createQuery(jpql);
		query.setParameter("chave", "%" + chave + "%");

		List<Cliente> result = query.getResultList();
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<Cliente> listarClientes() throws IOException {
		return manager.createQuery("select c from Cliente c").getResultList();
	}

}
