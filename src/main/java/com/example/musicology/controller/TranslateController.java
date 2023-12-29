package com.example.musicology.controller;

import com.deepl.api.DeepLException;
import com.deepl.api.Formality;
import com.deepl.api.TextTranslationOptions;
import com.deepl.api.Translator;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

@RestController
@RequestMapping("/")
@Log4j2
public class TranslateController {

    public static final String AUTH_KEY = "48087adf-7f5e-aae1-e919-c66a24edfed3:fx";
    protected Translator translator;
    public static final String TARGET_LANGUAGE = "es";

    @Autowired
    public TranslateController() {
        TextTranslationOptions options = new TextTranslationOptions();
        options.setFormality(Formality.More);
        options.setPreserveFormatting(true);
        this.translator = new Translator(AUTH_KEY);
    }

    @PostMapping("/traduccion")
    @CrossOrigin(origins = "http://localhost:3000")
    public String obtenerTraduccion(@RequestBody String texto) throws DeepLException, InterruptedException {
        //log.info("texto original: " + texto);
        String decodedText = URLDecoder.decode(texto, StandardCharsets.UTF_8);
        //log.info("texto traducido: " + translatedText);
        return translator.translateText(decodedText, "en", TARGET_LANGUAGE).getText();
    }
}
