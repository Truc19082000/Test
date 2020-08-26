package controller;

import entity.CategoriesEntity;
import entity.ContactEntity;
import entity.MenuEntity;
import entity.TravelDescriptionEntity;
import entity.TravelEntity;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.CategoriesRepository;
import repository.ContactRepository;
import repository.MenuRepository;
import repository.TravelDescriptionRepository;
import repository.TravelRepository;

@Controller
public class TravelController {

    @Autowired
    MenuRepository menuRepo;

    @Autowired
    TravelRepository travelRepo;

    @Autowired
    TravelDescriptionRepository travelDescriptionRepo;

    @Autowired
    ContactRepository contactRepo;

    @Autowired
    CategoriesRepository categoriesRepo;

    //Home
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getAllTravel(Model model) {
        List<MenuEntity> menus = menuRepo.listAllMenu();
        List<TravelEntity> travelList = travelRepo.listAllTravel();
        
        model.addAttribute("menus", menus);
        model.addAttribute("travelList", travelList);

        model.addAttribute("travel", new TravelEntity());
        setCategoriesDropdowList(model);

       // getMenubyId(1, model);
        
        return "home"; //return home.jsp
    }

    //Contact
    @RequestMapping(value = "/contact/{id}", method = RequestMethod.GET)
    public String showAllNews(Model model) {
        List<MenuEntity> menus = (List<MenuEntity>) menuRepo.findAll();
        List<ContactEntity> contactList = (List<ContactEntity>) contactRepo.findAll();
        
        model.addAttribute("menus", menus);
        model.addAttribute("contactList", contactList);

        return "contact";
    }

    //Travel Details
    @RequestMapping(value = "/view_travel/{id}", method = RequestMethod.GET)
    public String showTravelDetails(@PathVariable(value = "id") int id, Model model) {
        List<CategoriesEntity> categoriesList = (List<CategoriesEntity>) categoriesRepo.findAll();
        List<MenuEntity> menus = (List<MenuEntity>) menuRepo.findAll();
        TravelEntity travel = travelRepo.findById(id);

        model.addAttribute("menus", menus);
        model.addAttribute("travel", travel);
        model.addAttribute("categoriesList", categoriesList);
        //model.addAttribute("trave2", travel2);

        return "travelDescription";
    }

    //Search
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchProcess(@RequestParam(name = "searchText") String searchText,
            Model model) {
        String searchText1 = searchText;
        searchText = "%" + searchText1 + "%";
        List<TravelEntity> travelList = travelRepo.findByTitleLike(searchText); //bookList --> items="${bookList}" ben home.jsp
        model.addAttribute("travelList", travelList);

        model.addAttribute("searchText", searchText1);

        return "home";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showUserPage() {
        return "user/userHome";
    }

    //Dropdow cua Category
    private void getMenubyId(@PathVariable(value = "id") int id,Model model) {
        MenuEntity menu = menuRepo.findById(id);
        model.addAttribute("menu", menu);
    }
    //Dropdow cua Category
    private void setCategoriesDropdowList(Model model) {
        List<CategoriesEntity> categoriesList = (List<CategoriesEntity>) categoriesRepo.findAll();
        if (!categoriesList.isEmpty()) {
            Map<Integer, String> categoriesMap = new LinkedHashMap<>(); //Integer=id; String=name -->Category Table           
            for (CategoriesEntity categories : categoriesList) {
                categoriesMap.put(categories.getId(), categories.getCategories());
            }
            model.addAttribute("categoriesList", categoriesMap);
        }
    }
    //Save
    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
    public String saveNewBook(TravelEntity travel) {
        //Save Travel
        TravelDescriptionEntity travelDescription = travel.getTravelDescription();
        travel.setTravelDescription(travelDescription);
        TravelEntity newTravel = travelRepo.save(travel);

        //Save Book Details
        travelDescription.setId(newTravel.getId());
        travelDescriptionRepo.save(travelDescription);

        return "redirect:/";
    }

}
