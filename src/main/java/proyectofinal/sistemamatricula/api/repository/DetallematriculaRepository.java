package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Detallematricula;

public interface DetallematriculaRepository extends JpaRepository<Detallematricula,Integer> {
}
