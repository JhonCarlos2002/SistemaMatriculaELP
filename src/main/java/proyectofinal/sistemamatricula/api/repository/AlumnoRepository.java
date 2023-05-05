package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Alumno;

public interface AlumnoRepository extends JpaRepository<Alumno, Integer> {
}

