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
import br.usjt.pi5semestre.model.service.ProjetoService;



@Controller
public class ManterProjetoController {
	@Autowired
	private ProjetoService pService;

	@Autowired
	private ClienteService gService;

	

	@RequestMapping("/novo_Projeto")
	public String novo(Model model, HttpSession session) {
		try {
			List<Cliente> clientes = gService.listarClientes();
			session.setAttribute("clientes", clientes);
			return "cadastrarProjeto";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
}

	@RequestMapping("/criar_Projeto")
	public String criarProjeto(@Valid Projeto projeto, BindingResult erros, Model model, HttpSession session) {
		try {
			
				Cliente cliente = new Cliente();
				cliente.setIdCliente(projeto.getCliente().getIdCliente());
				cliente.setRazaoSocial(gService.buscarCliente(cliente.getIdCliente()).getRazaoSocial());
				projeto.setCliente(cliente);
				System.out.println(projeto);
				projeto = pService.inserirProjeto(projeto);

				model.addAttribute("projeto", projeto);

				return "homeAdmin";
		
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
		}

	@RequestMapping("/reiniciar_lista")
	public String reiniciarLista(HttpSession session) {
		session.setAttribute("listaProjeto", null);
		return "ListarProjeto";
	}

	@RequestMapping("/listar_Projetos")
	public String listarProjetos(HttpSession session, Model model) {
		try {
			List<Projeto> listaProjeto;
			listaProjeto = pService.listarProjetos();
			session.setAttribute("listaProjeto", listaProjeto);
			return "homeAdmin";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
		}
		return "homeAdmin";
	}
	
	@RequestMapping("/excluir_filme")
	public String excluirProjeto(Projeto projeto, HttpSession session, Model model) {
		try {
			pService.excluirProjeto(projeto);
			List<Projeto> projetos = (List<Projeto>) session.getAttribute("lista");
			session.setAttribute("lista", removerDaLista(projeto, projetos));
			return "ListarProjeto";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	@RequestMapping("/visualizar_Demandas")
	public String visualizarProjeto(Projeto projeto, Model model, HttpSession session) {
		try {
			
			projeto = pService.buscarProjeto(projeto.getIdProjeto());
			model.addAttribute("projeto", projeto);
			
			return "painelDemandaAdmin";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	
	private List<Projeto> removerDaLista(Projeto projeto, List<Projeto> projetos){
		for(int i = 0; i < projetos.size(); i++) {
			if(projeto.getIdProjeto() == projetos.get(i).getIdProjeto()) {
				projetos.remove(i);
				break;
			}
		}
		return projetos;
	}
	
	private List<Projeto> atualizarDaLista(Projeto projeto, List<Projeto> projetos){
		for(int i = 0; i < projetos.size(); i++) {
			if(projeto.getIdProjeto() == projetos.get(i).getIdProjeto()) {
				projetos.remove(i);
				projetos.add(i, projeto);
				break;
			}
		}
		return projetos;
	}
	
}




