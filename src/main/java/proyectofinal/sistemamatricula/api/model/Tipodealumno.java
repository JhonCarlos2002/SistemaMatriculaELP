package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="tipodealumno")

public class Tipodealumno {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idtipodealumno")
    private Integer idTipoa;
    private String tipodealumno;
}
