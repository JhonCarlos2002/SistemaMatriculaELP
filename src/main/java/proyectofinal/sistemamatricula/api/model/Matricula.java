package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.DateTimeException;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "matricula")
public class Matricula {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idmatricula")
    private Integer id;
    private LocalDateTime fechaderegistro;
    private  Double costo;

    @ManyToOne
    @JoinColumn(name = "idalumno",referencedColumnName = "idalumno",nullable = false)
    private Alumno alumno;

}
