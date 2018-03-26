//package reviewCrud.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import reviewCrud.entity.BookEntity;
//import reviewCrud.repository.BookRepository;
//
//import java.util.List;
//
//@Controller
//public class productController {
//    @Autowired
//    BookRepository bookRepository;
//    @RequestMapping(value = "/product")
//    public String product(Model model){
//
//        List<BookEntity> book1=bookRepository.findByCategory_Id( 1 );
//         model.addAttribute( "book1",book1 );
//         List<BookEntity> book2=bookRepository.findByCategory_Id( 2);
//         model.addAttribute( "book2",book2 );
//         List<BookEntity> book3=bookRepository.findByCategory_Id( 3 );
//         model.addAttribute( "book3",book3 );
//        return "index";
//    }
//}
