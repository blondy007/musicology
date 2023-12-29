package com.example.musicology.model.lastfm;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Link {
    @JsonProperty("#text")
    private String text;
    private String rel;
    private String href;
}
