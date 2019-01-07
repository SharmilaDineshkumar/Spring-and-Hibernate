package com.myproject.onlineshop.model;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SupplierDAOImpl implements SupplierDAO {

    private Transaction trans;
    private Session sess;

    public boolean addSupplier(Supplier s) {
        try {
            DBConfig db = new DBConfig();
            sess = db.getSess();
            trans = sess.beginTransaction();
            sess.save(s);
            trans.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Supplier> listSupplier() {
        List<Supplier> slist = null;
        try {
            DBConfig db = new DBConfig();
            sess = db.getSess();
            trans = sess.beginTransaction();
            Query query = sess.createQuery("from Supplier");
            slist = query.list();
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return slist;
    }

}
