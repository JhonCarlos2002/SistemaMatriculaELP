package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="usuario")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idusuario")
    private  Integer idUsuario;
    private String nombredeusuario;
    private String contraseña;

    @ManyToOne
    @JoinColumn(name = "idusuario", referencedColumnName = "idUsuario", nullable = false)
    private Usuario usuario;
}
