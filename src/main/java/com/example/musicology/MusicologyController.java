package com.example.musicology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MusicologyController {
    @Autowired
    private GrupoRepository grupoRepository;

    @Autowired
    ServicioRegistro servicioRegistro;

    @GetMapping("/")
    public String listaRegistros(Model model) {//se le llama
        model.addAttribute("registros", grupoRepository.findAll());
        return "lista-registros";
    }

    @GetMapping("/nuevo-registro")//se le llama
    public String nuevoRegistroForm(Model model) {
        model.addAttribute("registro", new Grupo());
        return "nuevo-registro";
    }

    @PostMapping("/guardar-registro")
    public String guardarRegistro(@ModelAttribute Grupo grupo) {
        grupoRepository.save(grupo);
        return "redirect:/";
    }

    @GetMapping("/editar-registro/{id}")
    public String editarRegistroForm(@PathVariable("id") Long id, Model model) {
        Grupo registro = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        model.addAttribute("registro", registro);
        return "editar-registro";
    }

    @PostMapping("/actualizar-registro/{id}")
    public String actualizarRegistro(@PathVariable("id") Long id, @ModelAttribute Grupo grupo,
        Model model) {
        Grupo grupoAntiguo = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        grupoAntiguo.setNombre(grupo.getNombre());
        grupoAntiguo.setDescripcion(grupo.getDescripcion());
        grupoAntiguo.setEstilo(grupo.getEstilo());
        grupoAntiguo.setObservaciones(grupo.getObservaciones());
        grupoAntiguo.setPuntuacion(grupo.getPuntuacion());
        grupoAntiguo.setRelacionados(grupo.getRelacionados());
//        model.addAttribute("registroAleatorio", grupoAntiguo);
        grupoRepository.save(grupoAntiguo);
        return "redirect:/";
    }

    @GetMapping("/borrar-registro/{id}")
    public String borrarRegistro(@PathVariable("id") Long id, Model model) {
        Grupo grupo = grupoRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        grupoRepository.delete(grupo);
        return "redirect:/";
    }

    @GetMapping("/random")//se le llama
    public String obtenerRegistroAleatorio(Model model) {
        Grupo grupoAleatorio = servicioRegistro.obtenerRegistroAleatorio();
        model.addAttribute("registroAleatorio", grupoAleatorio);
        return "random";
    }
}
