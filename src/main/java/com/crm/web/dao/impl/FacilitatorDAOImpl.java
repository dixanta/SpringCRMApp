/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.web.dao.impl;

import com.crm.web.dao.FacilitatorDAO;
import com.crm.web.entity.Facilitator;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author USER
 */
@Repository(value = "courseDAO")
public class FacilitatorDAOImpl implements FacilitatorDAO {

    public List<Facilitator> getAll() {
        List<Facilitator> facilitators=new ArrayList<Facilitator>();
        facilitators.add(new Facilitator(1,"Dixanta","Shrestha","dixanta@gmail.com","96969", true));
        return facilitators;
    }
    
}
