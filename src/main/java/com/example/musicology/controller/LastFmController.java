package com.example.musicology.controller;

import com.example.musicology.LastFmArtist;
import com.example.musicology.model.lastfm.Artist;
import com.example.musicology.service.LastFmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lastfm")
public class LastFmController {

    @Autowired
    private LastFmService lastFmService;

    @GetMapping("/artist/{artistName}")
    @CrossOrigin(origins = "http://localhost:3000")
    public Artist getArtistInfo(@PathVariable String artistName) {
        return lastFmService.getArtistInfo(artistName);
    }
}
