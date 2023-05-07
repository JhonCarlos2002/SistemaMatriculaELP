package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "detallematricula")
public class Detallematricula {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "iddetallematricula")
    private Integer idDetalle;
    @ManyToOne
    @JoinColumn(name = "idmatricula",referencedColumnName = "idmatricula",nullable = false)
    private Matricula matricula;







}
