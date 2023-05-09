package com.example.musicology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class RegistroController {
    @Autowired
    private RegistroRepository registroRepository;

    @Autowired
    ServicioRegistro servicioRegistro;

    @GetMapping("/")
    public String listaRegistros(Model model) {
        model.addAttribute("registros", registroRepository.findAll());
        return "lista-registros";
    }

    @GetMapping("/nuevo-registro")
    public String nuevoRegistroForm(Model model) {
        model.addAttribute("registro", new Registro());
        return "nuevo-registro";
    }

    @PostMapping("/guardar-registro")
    public String guardarRegistro(@ModelAttribute Registro registro) {
        registroRepository.save(registro);
        return "redirect:/";
    }

    @GetMapping("/editar-registro/{id}")
    public String editarRegistroForm(@PathVariable("id") Long id, Model model) {
        Registro registro = registroRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        model.addAttribute("registro", registro);
        return "editar-registro";
    }

    @PostMapping("/actualizar-registro/{id}")
    public String actualizarRegistro(@PathVariable("id") Long id, @ModelAttribute Registro registro,
        Model model) {
        Registro registroAntiguo = registroRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        registroAntiguo.setNombre(registro.getNombre());
        registroAntiguo.setDescripcion(registro.getDescripcion());
        registroRepository.save(registroAntiguo);
        return "redirect:/";
    }

    @GetMapping("/borrar-registro/{id}")
    public String borrarRegistro(@PathVariable("id") Long id, Model model) {
        Registro registro = registroRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Registro no válido con ID " + id));
        registroRepository.delete(registro);
        return "redirect:/";
    }

    @GetMapping("/random")
    public String obtenerRegistroAleatorio(Model model) {
        Registro registroAleatorio = servicioRegistro.obtenerRegistroAleatorio();
        model.addAttribute("registroAleatorio", registroAleatorio);
        System.out.println("el registro es: " + registroAleatorio.getId() + " " + registroAleatorio.getNombre());
        return "random";
    }
}
