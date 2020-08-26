package repository;

import entity.TravelDescriptionEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TravelDescriptionRepository extends CrudRepository<TravelDescriptionEntity, Integer>{
    TravelDescriptionEntity findById(int id);
}
