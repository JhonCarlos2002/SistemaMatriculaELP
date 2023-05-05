package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "matricula")

public class Matricula {
    @Id
    @GeneratedValue
    @Column(name = "idmatricula")
    private  Integer id;
    private LocalDateTime fechaderegistro;
    private Double costo;

}
