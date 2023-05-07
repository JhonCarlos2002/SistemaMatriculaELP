package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;
@Entity
@Data
@Table(name="cursos")
public class Cursos {                   //Sin miedo al exito muchachitos

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcursos")
    private Integer idCursos;
    private String  codigocurso;
    private String nombrecurso;
    private String  sede;
    private Integer credito;
    private String ciclo;
    private String seccion;


}
