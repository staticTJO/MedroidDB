package com.medroid.domain;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/jsondoctorpatients/**")
@Controller
public class JsonDoctorPatients {

    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }
    
    @RequestMapping(value ="/jsondoctorpatients/GetPatientsByDoctorID/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> showJson(@PathVariable("id") String id) {	
    	HttpHeaders headers = new HttpHeaders();
    	headers.add("Content-Type", "application/json; charset=utf-8");
    	try {
    	String ID = id;
    	ArrayList<String> PatientJson = new ArrayList<String>();
    	
        List<Careteam> careteam = Careteam.entityManager().createQuery("SELECT o FROM Careteam o where o.doctor =" + ID, Careteam.class).getResultList();
            if (careteam == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            
           for(int i=0; i < careteam.size(); i++){
        	   PatientJson.add(careteam.get(i).getPatient().toJson());
            }
           
            return new ResponseEntity<String>(PatientJson.toString(),headers,HttpStatus.OK);
            
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    	
    }

    @RequestMapping
    public String index() {
        return "jsondoctorpatients/index";
    }
}
