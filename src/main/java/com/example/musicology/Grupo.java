package com.example.musicology;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "grupos")
public class Grupo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "descripcion")
    private String descripcion;

    @Column(name = "puntuacion")
    private Integer puntuacion;

    @Column(name = "observaciones")
    private String observaciones;

    @Column(name = "estilo")
    private String estilo;

    @Column(name = "relacionados")
    private String relacionados;

    // Constructor vacío
    public Grupo() {}

    public Grupo(String nombre, String descripcion, Integer puntuacion, String observaciones, String estilo, String relacionados) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.puntuacion = puntuacion;
        this.observaciones = observaciones;
        this.estilo = estilo;
        this.relacionados = relacionados;
    }
}
