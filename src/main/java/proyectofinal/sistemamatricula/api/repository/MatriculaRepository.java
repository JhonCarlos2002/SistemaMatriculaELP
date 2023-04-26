package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Matricula;

public interface MatriculaRepository extends JpaRepository<Matricula, Integer> {
}
