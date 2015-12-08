package database;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class DatabaseUtil {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("MediaStoreApp");
    
    public static EntityManagerFactory getEmFactory(){
        return emf;
    }
}

