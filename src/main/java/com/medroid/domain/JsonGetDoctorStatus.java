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

@RequestMapping("/jsongetdoctorstatus/**")
@Controller
public class JsonGetDoctorStatus {

    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }
    
    @RequestMapping(value ="/jsongetdoctorstatus/GetDoctorStatusByDoctorID/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> showJson(@PathVariable("id") String id) {	
    	HttpHeaders headers = new HttpHeaders();
    	headers.add("Content-Type", "application/json; charset=utf-8");
    	try {
    	String ID = id;
    	ArrayList<String> DoctorStatusJson = new ArrayList<String>();
    	
        List<DoctorStatus> doctorstatus = DoctorStatus.entityManager().createQuery("SELECT o FROM DoctorStatus o where o.doctorID =" + ID, DoctorStatus.class).getResultList();
            if (doctorstatus == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            
           for(int i=0; i < doctorstatus.size(); i++){
        	   DoctorStatusJson.add(doctorstatus.get(i).toJson());
            }
           
            return new ResponseEntity<String>(DoctorStatusJson.toString(),headers,HttpStatus.OK);
            
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    	
    }
    
    @RequestMapping
    public String index() {
        return "jsongetdoctorstatus/index";
    }
}
