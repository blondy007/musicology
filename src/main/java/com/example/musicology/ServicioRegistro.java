package com.example.musicology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Random;

@Service
public class ServicioRegistro {

    private final RegistroRepository registroRepository;

    @Autowired
    public ServicioRegistro(RegistroRepository registroRepository) {
        this.registroRepository = registroRepository;
    }

    public List<Registro> obtenerTodos() {
        return registroRepository.findAll();
    }

    public Optional<Registro> obtenerPorId(Long id) {
        return registroRepository.findById(id);
    }

    public Registro guardar(Registro registro) {
        return registroRepository.save(registro);
    }

    public void borrar(Long id) {
        registroRepository.deleteById(id);
    }

    public Registro obtenerRegistroAleatorio() {
        Random rand = new Random();
        long count = registroRepository.count(); // obtener el número de registros en la tabla
        Long randomId = (long) rand.nextInt((int) count) + 1; // seleccionar un ID aleatorio dentro del rango de IDs de registros existentes
        System.out.println("el indice es: " + randomId);
        return registroRepository.findById(randomId).orElse(null); // obtener el registro correspondiente al ID aleatorio

    }
}
