package com.uniovi.sdi.blog;

public class Comentario {

	private String usuario;
	private String texto;

	public Comentario() {
	}

	public Comentario(String usuario, String texto) {
		this.usuario = usuario;
		this.texto = texto;
	}

	public String getUsuario() {
		return usuario;
	}

	public String getTexto() {
		return texto;
	}

}
