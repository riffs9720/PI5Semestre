package br.usjt.pi5semestre.model.entity;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="projeto")
public class Projeto {
	@Id
	@NotNull
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idProjeto;
	
	@NotNull
	@Size(max=150)
	private String nomeProjeto;
	
	@Size(max=500)
	private String descricaoProjeto;
	
	private double valor;
	
	private int duracao;
	
	@Temporal(value = TemporalType.DATE)
	private Date dataInicio;
	
	@Temporal(value = TemporalType.DATE)
	private Date dataTermino;
	
	@Size(max=45)
	private String status;
	
	//Importando da classe Cliente
	@OneToOne
	@JoinColumn(name="Cliente_idCliente")
	private Cliente cliente;
	

	//Testar metódo para verificar se informa a duração do projeto
	public void projeto() {

		Calendar dataMaior = Calendar.getInstance();
		dataMaior.setTime(dataTermino);//data maior
		Calendar dataMenor = Calendar.getInstance();
		dataMenor.setTime(dataInicio);// data menor
		dataMaior.add(Calendar.DATE, - dataMenor.get(Calendar.DAY_OF_MONTH));
		System.out.println(dataMaior.get(Calendar.DAY_OF_MONTH));;
	}
	
	public int getIdProjeto() {
		return idProjeto;
	}

	public void setIdProjeto(int idProjeto) {
		this.idProjeto = idProjeto;
	}

	public String getNomeProjeto() {
		return nomeProjeto;
	}

	public void setNomeProjeto(String nomeProjeto) {
		this.nomeProjeto = nomeProjeto;
	}

	public String getDescricaoProjeto() {
		return descricaoProjeto;
	}

	public void setDescricaoProjeto(String descricaoProjeto) {
		this.descricaoProjeto = descricaoProjeto;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}
	
	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public Date getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Date getDataTermino() {
		return dataTermino;
	}

	public void setDataTermino(Date dataTermino) {
		this.dataTermino = dataTermino;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	//Importando da classe Cliente
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	@Override
	public String toString() {
		return "Projeto [idProjeto=" + idProjeto + ", nomeProjeto=" + nomeProjeto + ", descricaoProjeto="
				+ descricaoProjeto + ", valor=" + valor + ", duracao=" + duracao + ", dataInicio=" + dataInicio
				+ ", dataTermino=" + dataTermino + ", status=" + status + ", cliente=" + cliente + "]";
	}

}
