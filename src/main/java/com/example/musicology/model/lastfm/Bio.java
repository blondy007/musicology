package com.example.musicology.model.lastfm;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Bio {
    private Links links;
    private String published;
    private String summary;
    private String content;
}
