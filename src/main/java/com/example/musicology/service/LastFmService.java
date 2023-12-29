package com.example.musicology.service;

import com.example.musicology.LastFmArtist;
import com.example.musicology.model.lastfm.Artist;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class LastFmService {

    @Value("${lastfm.api.key}")
    private String apiKey;

    private static final String API_URL = "http://ws.audioscrobbler.com/2.0/";

    public Artist getArtistInfo(String artistName) {
        String url = API_URL + "?method=artist.getInfo&artist=" + artistName + "&api_key=" + apiKey + "&format=json";
        RestTemplate restTemplate = new RestTemplate();
        LastFmArtist response = restTemplate.getForObject(url, LastFmArtist.class);
        return response != null ? response.getArtist() : null;
    }
}
