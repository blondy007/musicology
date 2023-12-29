package com.example.musicology.model.lastfm;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class Artist {
    private String name;
    private String url;
    private List<Image> image;
    private String streamable;
    private String ontour;
    private Stats stats;
    private Similar similar;
    private Tags tags;
    private Bio bio;
}
