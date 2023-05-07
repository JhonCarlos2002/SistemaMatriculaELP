package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="centroestudios")
public class Centroestudios {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "idcentroestudios")
    private Integer idCentro;
    private String nombreinstitucion;


}
