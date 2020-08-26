package entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "categories")
public class CategoriesEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String categories;
    
    //Implement relationships with Travel, 1-n
    @OneToMany(mappedBy = "categories", fetch = FetchType.EAGER) //categories(*) ben TravelEntity
    List<TravelEntity> travelList;

    public CategoriesEntity() {
    }    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public List<TravelEntity> getTravelList() {
        return travelList;
    }

    public void setTravelList(List<TravelEntity> travelList) {
        this.travelList = travelList;
    }
    
    
    
}
