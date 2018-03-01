/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.web.dao;

import java.util.List;

/**
 *
 * @author USER
 */
public interface GenericDAO<T> {
    List<T> getAll();
}
