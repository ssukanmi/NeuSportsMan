package com.sukanmi.neusportsman.dao;


import javax.persistence.Query;

import com.sukanmi.neusportsman.pojo.User;


public class UserDAO extends DAO {
    
    public User getUser(String email) {
        try {
            begin();
            Query q = getSession().createQuery("FROM User WHERE email=:email");
            q.setParameter("email", email);
            User user = (User) q.getSingleResult();
            commit();
            return user;
            
        } catch (Exception e) {
            rollback();
        }
        return null;
    }
    
    public void createUser(User user) {
        
        try {
            begin();
            getSession().saveOrUpdate(user);
            commit();
        } catch (Exception e) {
            rollback();
        }
    }
}
