package repository;

import entity.MenuEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuRepository extends CrudRepository<MenuEntity, Integer>{
    @Query(value = "SELECT m.* FROM Menu m", nativeQuery = true)
    List<MenuEntity> listAllMenu();
    
    @Query(value = "select m.id, m.name from Menu m where m.name='Travel'", nativeQuery = true)
    MenuEntity findById(int id);
}
