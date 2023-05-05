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







}