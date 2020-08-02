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
import br.usjt.pi5semestre.model.entity.Demanda;
import br.usjt.pi5semestre.model.entity.Projeto;
import br.usjt.pi5semestre.model.entity.Recursos;
import br.usjt.pi5semestre.model.entity.Usuario;
import br.usjt.pi5semestre.model.service.DemandaService;
import br.usjt.pi5semestre.model.service.ProjetoService;
import br.usjt.pi5semestre.model.service.UsuarioService;


@Controller
public class ManterDemandaController {
	@Autowired
	private DemandaService dService;
	
	@Autowired
	private UsuarioService uService;
	
	@Autowired
	private ProjetoService pService;

	@RequestMapping("/nova_demanda")
	public String novo(Demanda demanda, Model model, HttpSession session) {
		try {
			Projeto projeto = new Projeto();
			projeto.setIdProjeto(demanda.getProjeto().getIdProjeto());
			session.setAttribute("projeto", projeto.getIdProjeto());
			List<Usuario> usuarios = uService.listarUsuario();
			session.setAttribute("usuarios", usuarios);
			
			List<Projeto> projetos = pService.listarProjetos();
			session.setAttribute("projetos", projetos);
			
			return "cadastrarDemanda";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
}

	@RequestMapping("/criar_demanda")
	public String criarDemanda(Demanda demanda, BindingResult erros, Model model, HttpSession session) {
		try {
			
				Projeto projeto = new Projeto();
				projeto.setIdProjeto((Integer) session.getAttribute("projeto"));
				projeto.setNomeProjeto(pService.buscarProjeto(projeto.getIdProjeto()).getNomeProjeto());
				List<Projeto> projetos = pService.listarProjetos();
				session.setAttribute("projetos", projetos);
				
				
				demanda.setProjeto(projeto);
				demanda = dService.inserirDemanda(demanda);

				model.addAttribute("demanda", demanda);

				return "homeAdmin";
		
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	
	@RequestMapping("/novo_Comentario")
	public String novoComentario(Demanda demanda, Model model, HttpSession session) {
		demanda.setIdDemanda(demanda.getIdDemanda());
		session.setAttribute("demandaid", demanda.getIdDemanda());
		return "cadastrarComentario";
}
	
	@RequestMapping("/criar_comentario")
	public String criarComentario(Demanda demanda, Recursos recursos, BindingResult erros, Model model, HttpSession session) {
		try {
				Demanda demandaComent = new Demanda();
				demandaComent = dService.buscarDemanda(demanda.getIdDemanda());
				recursos.setDemanda(demandaComent);
				recursos.getComentarios();
				recursos = dService.inserirComentario(recursos);
				session.setAttribute("recursos", recursos);
				return "painelDemanda";
		
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "painelDemanda";
		}
	}
	
	

	@RequestMapping("/reiniciar_lista1")
	public String reiniciarLista1(HttpSession session) {
		session.setAttribute("lista", null);
		return "ListarDemanda";
	}

	@RequestMapping("/listar_demanda")
	public String listarDemandas(Demanda demanda,HttpSession session, Model model, Integer idProjeto) {
		try {
			Projeto projeto = new Projeto();
			projeto.setIdProjeto(demanda.getProjeto().getIdProjeto());
			session.setAttribute("projeto", projeto.getIdProjeto());
			idProjeto = projeto.getIdProjeto();
			List<Demanda> listaDemanda;
			listaDemanda = dService.listarDemandas(idProjeto);
			session.setAttribute("listaDemanda", listaDemanda);
			return "painelDemandaAdmin";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
		}
		return "painelDemandaAdmin";
	}
	
	
	@RequestMapping("/listar_demandaAnalista")
	public String listarDemandaAnalista(Demanda demanda,HttpSession session, Model model, Integer idUsuario) {
		try {
			session.getAttribute("Usuario");
			Usuario usuario = new Usuario();
			usuario.setIdUsuario((Integer) session.getAttribute("usuario"));
			idUsuario = usuario.getIdUsuario();
			List<Demanda> listaDemandaAnalista;
			listaDemandaAnalista = dService.listarDemandaAnalista(idUsuario);
			session.setAttribute("listaDemandaAnalista", listaDemandaAnalista);
			return "homeAnalista";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
		}
		return "homeAnalista";
	}
	
	
	@RequestMapping("/visualizar_demanda")
	public String visualizarDemanda(Demanda demanda, Model model, HttpSession session) {
		try {
			demanda = dService.buscarDemanda(demanda.getIdDemanda());
			model.addAttribute("demanda", demanda);
			return "painelDemanda";		
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	@RequestMapping("/mudarStatus")
	public String mudarStatusDemanda(Demanda demanda, HttpSession session, Model model) {
		try {
			Demanda demandaAtual;
			demandaAtual = dService.buscarDemanda(demanda.getIdDemanda());
			demandaAtual.setStatus(demanda.getStatus());
			dService.atualizarDemanda(demandaAtual);
			model.addAttribute("demanda", demandaAtual);
			return "painelDemanda";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	

	@RequestMapping("/excluir_demanda")
	public String excluirDemanda(Demanda demanda, HttpSession session, Model model) {
		try {
			dService.excluirDemanda(demanda);
			List<Demanda> demandas = (List<Demanda>) session.getAttribute("lista");
			session.setAttribute("lista", removerDaLista1(demanda, demandas));
			return "ListarDemanda";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
	
	private List<Demanda> removerDaLista1(Demanda demanda, List<Demanda> demandas){
		for(int i = 0; i < demandas.size(); i++) {
			if(demanda.getIdDemanda() == demandas.get(i).getIdDemanda()) {
				demandas.remove(i);
				break;
			}
		}
		return demandas;
	}
	
	private List<Demanda> atualizarDaLista1(Demanda demanda, List<Demanda> demandas){
		for(int i = 0; i < demandas.size(); i++) {
			if(demanda.getIdDemanda() == demandas.get(i).getIdDemanda()) {
				demandas.remove(i);
				demandas.add(i, demanda);
				break;
			}
		}
		return demandas;
	}
	
	@RequestMapping("/atualizar_demanda")
	public String gravarAtualizacaoDemanda(@Valid Demanda demanda, BindingResult erros, Model model, HttpSession session) {
		try {
			if (!erros.hasErrors()) {
				Usuario usuario= new Usuario();
				usuario.setIdUsuario(demanda.getUsuario().getIdUsuario());
				usuario.setNomeUsuario(uService.buscarUsuario(usuario.getIdUsuario()).getNomeUsuario());
				demanda.setUsuario(usuario);

				dService.atualizarDemanda(demanda);

				model.addAttribute("demanda", demanda);
				List<Demanda> demandas = (List<Demanda>) session.getAttribute("lista");
				session.setAttribute("lista", atualizarDaLista1(demanda, demandas));

				return "VisualizarDemanda";
			} else {
				return "AtualizarDemanda";
			}
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}



}
