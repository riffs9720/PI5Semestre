package br.usjt.pi5semestre.controller;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContext;

import br.usjt.pi5semestre.model.entity.Usuario;
import br.usjt.pi5semestre.model.service.UsuarioService;
import br.usjt.pi5semestre.controller.ManterProjetoController;



@Controller
public class LoginController {
	
	@Autowired
	private UsuarioService uService;

	
	@RequestMapping("/Entrar")
	public String autenticador(HttpSession session, Usuario usuario, Model model) {
		System.out.println(usuario.getEmail());
		System.out.println(usuario.getSenha());
		try {
			
			usuario.setEmail(usuario.getEmail());
			usuario.setSenha(usuario.getSenha());

			usuario = uService.Login(usuario);
			System.out.println("ssdadadasd " + usuario);
			session.setAttribute("Usuario", usuario);
			session.setAttribute("usuario", usuario.getIdUsuario());
			session.setAttribute("usuarioNome", usuario.getNomeUsuario());
			
			if(usuario != null) {
				if (usuario.getTipoUsuario() == 1	 ) {
					return "homeAnalista";
				} else {
				return "homeAdmin";
				}
			} else {
				return "Login"; 
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@RequestMapping("/Dados")
	public void Dados(HttpSession session) {
		session.getAttribute("Usuario");
	}
	
	
	
	





	@RequestMapping("Login")
	public String iniciar() {
		return "Login";
	}
	
	@RequestMapping("/homeAdmin")
	public String novo(HttpSession session) {
		return "homeAdmin";
	}
	
	@RequestMapping("/perfilAnalista")
	public String perfilAnalista(HttpSession session) {
		return "perfilAnalista";
	}
	
	@RequestMapping("/homeAnalista")
	public String analista(HttpSession session) {
		return "homeAnalista";
	}
	
	@RequestMapping("/calendarioAdm")
	public String skaposdsop(HttpSession session) {
		return "calendarioAdm";
	}
	

	@RequestMapping("/painelDemandaAdmin")
	public String demandaAdmin(HttpSession session) {
		return "painelDemandaAdmin";
	}
	
	@RequestMapping("/cadastrarDemanda")
	public String cadDemanda(HttpSession session) {
		return "cadastrarDemanda";
	}
	


}
