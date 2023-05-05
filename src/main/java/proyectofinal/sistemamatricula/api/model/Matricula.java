package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name="matricula")
public class Matricula {

    private Integer id;
    private LocalDateTime fechadereistro;
    private Double costo;
}
