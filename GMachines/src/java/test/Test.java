/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.IDao;
import entities.Machine;
import java.util.logging.Level;
import java.util.logging.Logger;
import service.MachineService;
import util.HibernateUtil;

/**
 *
 * @author WISSAL
 */
public class Test {
    public static void main(String[] args){

       
            MachineService ms = new MachineService();
            ms.create(new Machine("EE1", "Dell", 1200.90));
            ms.create(new Machine("EE2", "hp", 1200));
            for(Machine m : ms.findAll())
                System.out.println(m);
       
}
}