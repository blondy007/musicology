package com.example.musicology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Random;

@Service
public class ServicioRegistro {

    private final GrupoRepository grupoRepository;

    @Autowired
    public ServicioRegistro(GrupoRepository grupoRepository) {
        this.grupoRepository = grupoRepository;
    }

    public List<Grupo> obtenerTodos() {
        return grupoRepository.findAll();
    }

    public Optional<Grupo> obtenerPorId(Long id) {
        return grupoRepository.findById(id);
    }

    public Grupo guardar(Grupo grupo) {
        return grupoRepository.save(grupo);
    }

    public void borrar(Long id) {
        grupoRepository.deleteById(id);
    }

    public Grupo obtenerRegistroAleatorio() {
        Random rand = new Random();
        long count = grupoRepository.count(); // obtener el número de registros en la tabla
        Long randomId = (long) rand.nextInt((int) count) + 1; // seleccionar un ID aleatorio dentro del rango de IDs de registros existentes
        System.out.println("el indice es: " + randomId);
        return grupoRepository.findById(randomId).orElse(null); // obtener el registro correspondiente al ID aleatorio

    }
}
