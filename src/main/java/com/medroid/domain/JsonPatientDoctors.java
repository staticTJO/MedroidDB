package com.medroid.domain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.runner.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@RequestMapping("/jsonpatientdoctors/**")
@Controller
public class JsonPatientDoctors {
    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }
    
    @RequestMapping("/jsonpatientdoctors/GETPATIENTS")
    public void GET() {
    	 System.out.println("GETER DONE");
    }
    

    @RequestMapping
    public String index() {
        return "jsonpatientdoctors/index";
    }
}
