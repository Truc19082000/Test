package repository;

import entity.CategoriesEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriesRepository extends CrudRepository<CategoriesEntity, Integer>{
        //@Query(value = "select c.categories from Categories c=?1")
        //List<CategoriesEntity> findByCategories(String categories);
}
