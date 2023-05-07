package proyectofinal.sistemamatricula.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import proyectofinal.sistemamatricula.api.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario,Integer> {
}
