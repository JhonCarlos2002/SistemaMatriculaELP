package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "detallematricula")
public class Detallematricula {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JoinColumn(name = "iddetallematricula")
    private Integer idDetallematricula;

    @ManyToOne
    @JoinColumn(name = "idcursos",referencedColumnName = "idcursos",nullable = false)
    private Cursos cursos;

    @ManyToOne
    @JoinColumn(name = "idmatricula",referencedColumnName = "idmatricula",nullable = false)
    private Matricula matricula;

    @ManyToOne
    @JoinColumn(name = "idalumno",referencedColumnName = "idalumno",nullable = false)
    private Alumno alumno;





}
