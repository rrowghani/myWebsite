package com.rezarowghani.entities;

import jakarta.persistence.Table;
import lombok.*;

@Getter
@Setter
//@Table(name="PICTURES")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Picture {
    private String Id;
    private String Category;
    private String Description;
}
