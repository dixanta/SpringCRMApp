/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.web.dao.impl;

import com.crm.web.dao.CourseDAO;
import com.crm.web.entity.Course;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author USER
 */
@Repository(value = "courseDAO")
public class CourseDAOImpl implements CourseDAO {

    public List<Course> getAll() {
        List<Course> courses=new ArrayList<Course>();
        courses.add(new Course(1,"Core Java","CJV",15000, true));
        courses.add(new Course(2,"Advanced Java","AJV",25000, true));
        courses.add(new Course(3,"ASP.net","ASP",25000, true));
        return courses;
    }
    
}
