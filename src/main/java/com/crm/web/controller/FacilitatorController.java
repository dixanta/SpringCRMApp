/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.web.controller;

import com.crm.web.dao.CourseDAO;
import com.crm.web.entity.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author USER
 */
@Controller
@RequestMapping(value = "/facilitator")
public class FacilitatorController {
    @Autowired
    private CourseDAO courseDAO;
    @RequestMapping(method =RequestMethod.GET )
    public String index(Model model){
        model.addAttribute("facilitators",courseDAO.getAll());
        return "facilitator/index";
    }
}
