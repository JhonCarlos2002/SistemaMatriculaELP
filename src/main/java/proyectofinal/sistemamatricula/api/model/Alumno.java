package proyectofinal.sistemamatricula.api.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;
@Data
@Entity
public class Alumno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idalumno")
    private  Integer id;
    private  String nombre;
    private  String appaterno;
    private String apmaterno;
    private  String dni;
    private  String direccion;
    private String telefono;
    private Date fechanacimiento;
    private  String sexo;
    private String codigoalumno;
    private String correo;
}
