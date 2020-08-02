package br.usjt.pi5semestre.model.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="demanda")
public class Demanda {
	@Id
	@NotNull 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idDemanda;
	
	@NotNull
	private String nomeDemanda;
	
	@NotNull
	private String descricaoDemanda;
	
	@NotNull
	private String status;
	
	@NotNull
	@Size(min=1, max=100, message="ex: 60 horas")
	private String tempoDemanda;

	//Importando da classe Usuario
	@OneToOne
	@JoinColumn(name="Usuario_idUsuario")
	private Usuario usuario;
	
	//Importando da classe projeto
	@ManyToOne
	@JoinColumn(name="projeto_idProjeto")
	private Projeto projeto;
	
	
	
		
	
		
	public int getIdDemanda() {
		return idDemanda;
	}
	public void setIdDemanda(int idDemanda) {
		this.idDemanda = idDemanda;
	}
	public String getNomeDemanda() {
		return nomeDemanda;
	}
	public void setNomeDemanda(String nomeDemanda) {
		this.nomeDemanda = nomeDemanda;
	}
	public String getDescricaoDemanda() {
		return descricaoDemanda;
	}
	public void setDescricaoDemanda(String descricaoDemanda) {
		this.descricaoDemanda = descricaoDemanda;
	}
	public String getTempoDemanda() {
		return tempoDemanda;
	}
	public void setTempoDemanda(String tempoDemanda) {
		this.tempoDemanda = tempoDemanda;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	//Importando da classe projeto
	public Projeto getProjeto() {
		return projeto;
	}
	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	
	@Override
	public String toString() {
		return "Demanda [idDemanda=" + idDemanda + ", nomeDemanda=" + nomeDemanda + ", descricaoDemanda="
				+ descricaoDemanda + ", status=" + status + ", tempoDemanda=" + tempoDemanda + ", usuario=" + usuario
				+ ", projeto=" + projeto + "]";
	}




	
	
}
