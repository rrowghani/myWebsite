package com.rezarowghani.entities;

import jakarta.persistence.Table;
import lombok.*;

import java.util.Date;

@ToString
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class GuestBook {

    private int Id;
    private String Name;
    private String Comment;
    private Date TimeStamp;
}
