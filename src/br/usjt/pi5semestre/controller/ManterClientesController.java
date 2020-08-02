package br.usjt.pi5semestre.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.pi5semestre.model.entity.Cliente;
import br.usjt.pi5semestre.model.entity.Projeto;
import br.usjt.pi5semestre.model.entity.Usuario;
import br.usjt.pi5semestre.model.service.ClienteService;




@Controller
public class ManterClientesController {
	@Autowired
	private ClienteService cService;

	@RequestMapping("/cadastrarCliente")
	public String novoCliente(HttpSession session) {
		return "cadastrarCliente";
	}
	

	

	@RequestMapping("/criar_Cliente")
	public String criarCliente(@Valid Cliente cliente, BindingResult erros, Model model) {
		try {
			cliente = cService.inserirCliente(cliente);
			model.addAttribute("cliente", cliente);
			return "homeAdmin";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}

	@RequestMapping("/reiniciar_lista2")
	public String reiniciarLista2(HttpSession session) {
		session.setAttribute("lista", null);
		return "ListarClientes";
	}

	@RequestMapping("/listar_Clientes")
	public String listarClientes(HttpSession session, Model model) {
		try {
			List<Cliente> listaCliente;
			listaCliente = cService.listarClientes();
			session.setAttribute("listaCliente", listaCliente);
			return "listaClientes";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
		}
		return "homeAdmin";
	}

	@RequestMapping("/visualizar_clientes")
	public String visualizarCliente(Cliente cliente, Model model) {
		try {
			cliente = cService.buscarCliente(cliente.getIdCliente());
			model.addAttribute("cliente", cliente);
			return "VisualizarCliente";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	@RequestMapping("/excluir_cliente")
	public String excluirCliente(Cliente cliente, HttpSession session, Model model) {
		try {
			cService.excluirCliente (cliente);
			List<Cliente> clientes = (List<Cliente>) session.getAttribute("lista");
			session.setAttribute("lista", removerDaLista2(cliente, clientes));
			return "listaClientes";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	private List<Cliente> removerDaLista2(Cliente cliente, List<Cliente> clientes){
		for(int i = 0; i < clientes.size(); i++) {
			if(cliente.getIdCliente() == clientes.get(i).getIdCliente()) {
				clientes.remove(i);
				break;
			}
		}
		return clientes;
	}
	
	private List<Cliente> atualizarDaLista2(Cliente cliente, List<Cliente> clientes){
		for(int i = 0; i < clientes.size(); i++) {
			if(cliente.getIdCliente() == clientes.get(i).getIdCliente()) {
				clientes.remove(i);
				clientes.add(i, cliente);
				break;
			}
		}
		return clientes;
	}
	
	@RequestMapping("/alterar_cliente")
	public String atualizar2(Cliente cliente, Model model, HttpSession session) {
		try {
			cliente = cService.buscarCliente(cliente.getIdCliente());
			model.addAttribute("cliente", cliente);
			return "Criar Tela de Editar Cliente";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}

	@RequestMapping("/atualizar_cliente")
	public String gravarAtualizacaoCliente(@Valid Cliente cliente, BindingResult erros, Model model, HttpSession session) {
		try {
			if (!erros.hasErrors()) {

				cService.atualizarCliente(cliente);

				model.addAttribute("cliente", cliente);
				List<Cliente> clientes= (List<Cliente>) session.getAttribute("lista");
				session.setAttribute("lista", atualizarDaLista2(cliente, clientes));

				return "listaClientes";
			} else {
				return "Criar Tela de Editar Cliente";
			}
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}


}