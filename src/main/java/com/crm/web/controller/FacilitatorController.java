/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.web.controller;

import com.crm.web.dao.FacilitatorDAO;
import com.crm.web.entity.Facilitator;
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
    private FacilitatorDAO facilitatorDAO;
    @RequestMapping(method =RequestMethod.GET )
    public String index(Model model){
        model.addAttribute("facilitators",facilitatorDAO.getAll());
        return "facilitator/index";
    }
}
