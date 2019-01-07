package com.myproject.onlineshop.model;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
    private Transaction trans;
    private Session sess;

    public boolean addCategory(Category c) {
        try {
            DBConfig db = new DBConfig();
            sess = db.getSess();
            trans = sess.beginTransaction();
            sess.save(c);
            trans.commit();
            return true;
        } catch (Exception r) {
            System.out.println(r);
        }
        return false;
    }

    public List<Category> listCategory() {
        List<Category> clist = null;
        try {
            DBConfig db = new DBConfig();
            sess = db.getSess();
            trans = sess.beginTransaction();
            Query query = sess.createQuery("from Category");
            clist = query.list();
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return clist;
    }

    public Category findById(int id) {

        DBConfig db = new DBConfig();
        sess = db.getSess();

        Category c = (Category) sess.get(Category.class, id);
        return c;
    }

}
