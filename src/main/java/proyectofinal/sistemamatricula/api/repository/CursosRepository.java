package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Cursos;

public interface CursosRepository extends JpaRepository<Cursos,Integer> {
    
}
