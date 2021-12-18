package com.sukanmi.neusportsman.dao;

import com.sukanmi.neusportsman.pojo.Event;

public class EventDAO extends DAO {
    
    public void createEvent(Event event) {
        
        try {
            begin();
            getSession().saveOrUpdate(event);
            commit();
        } catch (Exception e) {
            rollback();
        }
    }
}
