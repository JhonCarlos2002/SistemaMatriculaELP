package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="carreras")

public class Carreras {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idcarreras")
    private Integer idCarreras;
    private String nombrecarrera;


}
