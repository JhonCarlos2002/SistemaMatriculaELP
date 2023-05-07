package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Carreras;

public interface CarrerasRepository extends JpaRepository<Carreras,Integer> {
}
