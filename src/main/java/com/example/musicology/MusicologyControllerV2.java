package com.example.musicology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v2")
public class MusicologyControllerV2 {

    @Autowired
    private GrupoRepository grupoRepository;

    @Autowired
    ServicioRegistro servicioRegistro;

    @GetMapping("/registros")
    @CrossOrigin(origins = "http://localhost:3001")
    public List<Grupo> listaRegistros() {
        return grupoRepository.findAll();
    }

    @GetMapping("/nuevo-registro")
    @CrossOrigin(origins = "http://localhost:3001")
    public Grupo nuevoRegistroForm() {
        return new Grupo();
    }

    @PostMapping("/guardar-registro")
    @CrossOrigin(origins = "http://localhost:3001")
    public void guardarRegistro(@RequestBody Grupo grupo) {
        grupoRepository.save(grupo);
    }

    @GetMapping("/editar-registro/{id}")
    @CrossOrigin(origins = "http://localhost:3001")
    public Grupo editarRegistroForm(@PathVariable("id") Long id) {
        return grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
    }

    @PutMapping("/actualizar-registro/{id}")
    @CrossOrigin(origins = "http://localhost:3001")
    public void actualizarRegistro(@PathVariable("id") Long id, @RequestBody Grupo grupo) {
        Grupo grupoAntiguo = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        grupoAntiguo.setNombre(grupo.getNombre());
        grupoAntiguo.setDescripcion(grupo.getDescripcion());
        grupoAntiguo.setEstilo(grupo.getEstilo());
        grupoAntiguo.setObservaciones(grupo.getObservaciones());
        grupoAntiguo.setPuntuacion(grupo.getPuntuacion());
        grupoAntiguo.setRelacionados(grupo.getRelacionados());
        grupoRepository.save(grupoAntiguo);
    }

    @DeleteMapping("/borrar-registro/{id}")
    @CrossOrigin(origins = "http://localhost:3001")
    public void borrarRegistro(@PathVariable("id") Long id) {
        Grupo grupo = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        grupoRepository.delete(grupo);
    }

    @GetMapping("/random")
    @CrossOrigin(origins = "http://localhost:3001")
    public Grupo obtenerRegistroAleatorio() {
        return servicioRegistro.obtenerRegistroAleatorio();
    }
}
