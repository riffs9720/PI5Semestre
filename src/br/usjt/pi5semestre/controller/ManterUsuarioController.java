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
import br.usjt.pi5semestre.model.service.UsuarioService;



@Controller
public class ManterUsuarioController {
	@Autowired
	private UsuarioService uService;

	

	@RequestMapping("/novo_Usuario")
	public String novo(Model model, HttpSession session) {
			return "cadastrarAnalista";
	}


	@RequestMapping("/criar_Usuario")
	public String criarUsuario(@Valid Usuario usuario, BindingResult erros, Model model) {
		try {
			usuario = uService.inserirUsuario(usuario);
			model.addAttribute("usuarios", usuario);
			return "homeAdmin";
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "Erro";
		}
	}
		
		@RequestMapping("/listar_Analistas")
		public String listarUsuarios(HttpSession session, Model model) {
			try {
				List<Usuario> listaUsuario;
				listaUsuario = uService.listarUsuario();
				session.setAttribute("listaUsuario", listaUsuario);
				return "listaAnalistas";
			} catch (IOException e) {
				e.printStackTrace();
				model.addAttribute("erro", e);
				return "Erro";
			}
		}
			
		@RequestMapping("/excluir_Analista")
		private String removerDaListaUsuario(Usuario usuario, List<Usuario> usuarios, HttpSession session){
			session.setAttribute("idUsuario", usuario.getIdUsuario());
			session.getAttribute("idUsuario");
			usuarios.remove(usuario.getIdUsuario());
			
			return "listaAnalistas";
		}
		
}



	


	

	

	








