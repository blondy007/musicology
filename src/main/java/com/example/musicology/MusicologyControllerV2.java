package com.example.musicology;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
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
@Log4j2
@RequestMapping("/v2")
@CrossOrigin(origins = {"http://localhost:3000", "https://musicology-front.web.app", "https://musicology-front.firebaseapp.com"})
//@CrossOrigin(origins = {"http://localhost:3000", "https://musicology-front.web.app:3000", "https://musicology-front.firebaseapp.com:3000"})
public class MusicologyControllerV2 {

    @Autowired
    private GrupoRepository grupoRepository;

    @Autowired
    ServicioRegistro servicioRegistro;

    @GetMapping("/registros")
    public List<Grupo> listaRegistros() {
        return grupoRepository.findAll();
    }

    @GetMapping("/registros-options")
    public ResponseEntity<?> handleOptionsRequest() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Access-Control-Allow-Origin", "http://localhost:3000, https://musicology-front.web.app, https://musicology-front.firebaseapp.com");
        headers.add("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        headers.add("Access-Control-Allow-Headers", "Access-Control-Allow-Origin");
        //headers.add("Access-Control-Allow-Credentials", "true");
        headers.add("Access-Control-Max-Age", "3600");
        log.info("OPTIONS request received");

        var responseEntity =  ResponseEntity.ok().headers(headers).build();

        return responseEntity;
    }

    @GetMapping("/nuevo-registro")
    public Grupo nuevoRegistroForm() {
        return new Grupo();
    }

    @PostMapping("/guardar-registro")
    public void guardarRegistro(@RequestBody Grupo grupo) {
        grupoRepository.save(grupo);
    }

    @GetMapping("/editar-registro/{id}")
    public Grupo editarRegistroForm(@PathVariable("id") Long id) {
        return grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
    }

    @PutMapping("/actualizar-registro/{id}")
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
    public void borrarRegistro(@PathVariable("id") Long id) {
        Grupo grupo = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        grupoRepository.delete(grupo);
    }

    @GetMapping("/random")
    public Grupo obtenerRegistroAleatorio() {
        return servicioRegistro.obtenerRegistroAleatorio();
    }
}
