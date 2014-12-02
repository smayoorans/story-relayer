package com.express.pony.controller;

/**
 * Created by pratheep on 11/30/14.
 */

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.express.pony.dao.RegistrationDAO;
import com.express.pony.model.Registration;

@Controller
public class RegistrationController extends SimpleFormController {

     public RegistrationController(){
        setCommandClass(Registration.class);
        setCommandName("registration");
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String getRegistrationPage(Map<String, Object> map) {
        map.put("registration", new Registration());
        return "registration";
    }

    @RequestMapping(value = "/registration-action", method = RequestMethod.POST)
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, BindingResult command,
                                    BindException errors) throws Exception {

        String firstName = request.getParameter("firstName");
        System.out.println("----------------------------------");


            Registration registration = (Registration)command;
            System.out.println(registration);

        ApplicationContext context =
                new ClassPathXmlApplicationContext("Spring-Module.xml");

        RegistrationDAO registrationDAO = (RegistrationDAO) context.getBean("registrationDAO");
        registrationDAO.insert(registration);

        //Customer customer1 = customerDAO.findByCustomerId(1);
        //System.out.println(customer1);


        return new ModelAndView("registrationSuccess","registration",registration);
    }

    @Override
    protected Object formBackingObject(HttpServletRequest request)
        throws Exception{

        Registration reg = new Registration();

        return reg;
    }

    @Override
    protected Map referenceData(HttpServletRequest request) throws Exception {
        Map referenceData = new HashMap();

        //Data references for favourite category
        Map<String,String> favCatogery = new LinkedHashMap<String, String>();
        favCatogery.put("Thriller", "Thriller");
        favCatogery.put("Horror", "Horror");
        favCatogery.put("Romance", "Romance");
        favCatogery.put("Crime", "Crime");
        favCatogery.put("Science Fiction", "Science Fiction");
        referenceData.put("favCatogeryList", favCatogery);

        return referenceData;
    }
}
