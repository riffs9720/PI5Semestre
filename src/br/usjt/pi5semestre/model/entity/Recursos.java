package br.usjt.pi5semestre.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="recursos")
public class Recursos {
	
	
	@Id
	@NotNull 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idRecursos;
	
	private String comentarios;
	
	
	private String arquivo;
	
	//Importando da classe projeto
		@ManyToOne
		@JoinColumn(name="demanda_idDemanda")
		private Demanda demanda;
		
		
		
		

		public Demanda getDemanda() {
			return demanda;
		}

		public void setDemanda(Demanda demanda) {
			this.demanda = demanda;
		}

		public int getIdRecursos() {
			return idRecursos;
		}

		public void setIdRecursos(int idRecursos) {
			this.idRecursos = idRecursos;
		}

		public String getComentarios() {
			return comentarios;
		}

		public void setComentarios(String comentarios) {
			this.comentarios = comentarios;
		}

		public String getArquivo() {
			return arquivo;
		}

		public void setArquivo(String arquivo) {
			this.arquivo = arquivo;
		}

		
		@Override
		public String toString() {
			return "Recursos [idRecursos=" + idRecursos + ", comentarios=" + comentarios + ", arquivo=" + arquivo
					+ ", demanda=" + demanda + "]";
		}





	
	
	
	
}
