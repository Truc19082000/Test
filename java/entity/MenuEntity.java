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
@Table(name = "menu")
public class MenuEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    
    //Implement relationships with Travel, 1-n
    @OneToMany(mappedBy = "menu", fetch = FetchType.EAGER) //menu(*) ben TravelEntity
    List<TravelEntity> travelList;
    
    
    Public test(){
     }
    public MenuEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<TravelEntity> getTravelList() {
        return travelList;
    }

    public void setTravelList(List<TravelEntity> travelList) {
        this.travelList = travelList;
    }

    
    
}
