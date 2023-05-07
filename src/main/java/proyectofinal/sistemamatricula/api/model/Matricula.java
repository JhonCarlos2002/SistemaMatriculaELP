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
    private  Integer idMatricula;
    private LocalDateTime fechaderegistro;
    private Double costo;

    @ManyToOne
    @JoinColumn(name = "idalumno",referencedColumnName = "idalumno",nullable = false)
    private  Alumno alumno;

    @ManyToOne
    @JoinColumn(name = "idcursos",referencedColumnName = "idcursos",nullable = false)
    private  Cursos cursos;

    @ManyToOne
    @JoinColumn(name = "idcentroestudios",referencedColumnName = "idcentroestudios",nullable = false)
    private Centroestudios centroestudios;

    @ManyToOne
    @JoinColumn(name = "idtipodealumno",referencedColumnName = "idtipodealumno",nullable = false)
    private Tipodealumno tipodealumno;

    @ManyToOne
    @JoinColumn(name = "idcarreras",referencedColumnName = "idcarreras",nullable = false)
    private Carreras carreras;




}
