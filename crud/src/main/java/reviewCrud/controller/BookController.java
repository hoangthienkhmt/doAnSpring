package reviewCrud.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import reviewCrud.entity.BookEntity;
import reviewCrud.entity.CategoryEntity;
import reviewCrud.entity.ViewEntity;
import reviewCrud.repository.BookRepository;
import reviewCrud.repository.Bookrepos;
import reviewCrud.repository.CategoryRepository;
import reviewCrud.repository.ViewRepository;

import java.text.SimpleDateFormat;
import java.util.*;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class BookController {
    @Autowired
    BookRepository bookRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @Autowired
    ViewRepository viewRepository;

    @Autowired
    Bookrepos bookrepos;

    @RequestMapping(method = GET)
    public String showBooks(Model model) {
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        List<BookEntity> book= (List<BookEntity>) bookRepository.findAll();
        model.addAttribute("book",book);
//        List<BookEntity> book= (List<BookEntity>) bookrepos.getBooks(1);
//       model.addAttribute("book",book);
        List<ViewEntity> test = viewRepository.findTop2ByOrderByCountDesc();
        List<BookEntity> productList = new ArrayList<>();
        for(ViewEntity viewEntity : test) {
            productList.add(viewEntity.getBookEntity());
        }
        model.addAttribute("bookTop",productList);
        return "index";
    }

    @RequestMapping(value = "/product")
public  String showpro(Model model){
    List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
    model.addAttribute("categoryEntityList",categoryEntityList);
    List<BookEntity> book= (List<BookEntity>) bookRepository.findAll();
    model.addAttribute("book",book);
    return "product";
}

    @RequestMapping(value = "/viewById")
    public String showproductbyid(Model model, @RequestParam("id") int categoryId) {
        List<BookEntity> bookEntityList = (List<BookEntity>) bookRepository.listbookBycategory(categoryId);
        model.addAttribute("bookEntityList", bookEntityList);
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        return "product";
    }

    @RequestMapping(value = "/newbook")
    public String showNewBook(Model model) {
        return "newbook";

    }

    @RequestMapping(value = "/contact")
    public String contact(Model model) {
        return "contact";

    }

    @RequestMapping(value = "/about")
    public String showNewBook5(Model model) {

        return "about";

    }
//    @RequestMapping(value = "/newbook", method = POST)
////    public String saveBook(BookEntity book) {
////        bookRepository.save(book);
//        return "redirect:/";
//    }

    @RequestMapping(value = "/delete/{id}", method = GET)
    public String deleteBook(@PathVariable int id) {
        bookRepository.delete(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit/{id}", method = GET)
    public String showEditBook(Model model, @PathVariable int id) {
        model.addAttribute("book", bookRepository.findOne(id));
        model.addAttribute("msg", "update book");
        model.addAttribute("type", "update");
        model.addAttribute("action", "/updateBook");
//        setCategoryDropDownlist(model);
        return "book";
    }
    @RequestMapping(value = "/cart")
    public String return_cart(){
        return "index";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }

@RequestMapping(value = "/search", method = POST)
public String search(@RequestParam("searchInput")String searchInput, Model model) {
    List<BookEntity> resultList;
    if (searchInput.isEmpty()) {
        resultList = (List<BookEntity>) bookRepository.findAll();
    } else {
        resultList = bookRepository.findByNameContaining(searchInput);
    }
    model.addAttribute("book", resultList);
    List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
    model.addAttribute("categoryEntityList",categoryEntityList);
    return "index";
}

}
