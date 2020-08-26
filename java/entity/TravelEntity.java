package entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "travel")
public class TravelEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String describes;
    @DateTimeFormat(pattern = "mm-MM-dd")
    private LocalDate postDate;
    
    //Set up relationshipss with Menu n_1
    @ManyToOne
    @JoinColumn(name = "menuId")
    private MenuEntity menu; //(*)
    
     //Set up relationshipss with Categories n_1
    @ManyToOne
    @JoinColumn(name = "categoriesId")
    private CategoriesEntity categories; //(*)

    //Setup relationshipss with TravelDescription
    @OneToOne()
    @PrimaryKeyJoinColumn
    private TravelDescriptionEntity travelDescription;//(**)

    public TravelEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public LocalDate getPostDate() {
        return postDate;
    }

    public void setPostDate(LocalDate postDate) {
        this.postDate = postDate;
    }

    public MenuEntity getMenu() {
        return menu;
    }

    public void setMenu(MenuEntity menu) {
        this.menu = menu;
    }

    public TravelDescriptionEntity getTravelDescription() {
        return travelDescription;
    }

    public void setTravelDescription(TravelDescriptionEntity travelDescription) {
        this.travelDescription = travelDescription;
    }

    public CategoriesEntity getCategories() {
        return categories;
    }

    public void setCategories(CategoriesEntity categories) {
        this.categories = categories;
    }
    
    public String getPostDateFormatted(){
        DateTimeFormatter postDateFormat = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        return postDateFormat.format(postDate);
    }
       
}
