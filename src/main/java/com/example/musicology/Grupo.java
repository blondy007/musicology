package com.example.musicology;

import lombok.AllArgsConstructor;
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
@AllArgsConstructor
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

    @Column(name = "revisado")
    private Boolean revisado;

    @Column(name = "favorito")
    private Boolean favorito;

    @Column(name = "opinion_personal")
    private Boolean opinion_personal;

    public Grupo() {}

}
