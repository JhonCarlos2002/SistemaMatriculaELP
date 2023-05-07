package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "detallematricula")
public class Detallematricula {
    @ManyToOne
    @JoinColumn(name = "idmatricula",referencedColumnName = "idmatricula",nullable = false)
    private Matricula matricula;







}
