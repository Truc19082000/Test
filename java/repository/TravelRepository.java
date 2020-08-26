package repository;

import entity.TravelEntity;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TravelRepository extends CrudRepository<TravelEntity, Integer>{
    TravelEntity findById(int id);
    
    //@Query( value = "SELECT c.categories, COUNT(t.id) FROM Travel t JOIN Categories c ON t.categoriesId=c.id GROUP BY c.categories = 1", nativeQuery = true)
    //List<TravelEntity> groupByCategories(String categories);
    //@Query(nativeQuery = true, value = "SELECT title FROM Travel")
    //List<TravelEntity> groupByTitle();
    @Query(value = "SELECT t.* FROM Travel t Order By t.postDate DESC", nativeQuery = true)
    List<TravelEntity> listAllTravel();
    
     @Query(value = "SELECT t.* FROM Travel t Join Categories c On t.categoriesId=c.id Group BY c.id", nativeQuery = true)
    List<TravelEntity> listAllTravels();
    
    List<TravelEntity> findByTitleLike(String title);
    @Query(value = "SELECT t.postDate FROM Travel t ORDER BY t.postDate=?1 DESC;", nativeQuery = true)
    List<TravelEntity> orderByPostDate(LocalDate postDate);
}
