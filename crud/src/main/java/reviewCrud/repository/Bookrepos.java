package reviewCrud.repository;

import org.springframework.stereotype.Repository;
import reviewCrud.entity.BookEntity;

import java.util.ArrayList;
import java.util.List;

@Repository
public class Bookrepos {
    public static final int dataPerPage = 9;
    public List<BookEntity> bookEntityList;

    public List<BookEntity> getBooks(){
        return bookEntityList;
    }

    public List<BookEntity> getBooks(int page){
        List<BookEntity> result = new ArrayList<>();
        int start = (page - 1) * dataPerPage;
        for (int i = start; i < start + dataPerPage; i++) {
            result.add(bookEntityList.get(i));
        }
        return result;
    }
}
