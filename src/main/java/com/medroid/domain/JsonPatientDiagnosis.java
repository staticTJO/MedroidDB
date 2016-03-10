package com.medroid.domain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import com.medroid.domain.DoctorDiagnosis;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/jsonpatientdiagnosis/**")
@Controller
public class JsonPatientDiagnosis {

    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }
    
    @RequestMapping(value ="/jsonpatientdiagnosis/GetDiagnosisPatientID/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> showJson(@PathVariable("id") String id) {	
    	HttpHeaders headers = new HttpHeaders();
    	headers.add("Content-Type", "application/json; charset=utf-8");
    	try {
    	String ID = id;
    	ArrayList<String> DiagnosisJson = new ArrayList<String>();
    	
        List<DoctorDiagnosis> doctordiagnosis = DoctorDiagnosis.entityManager().createQuery("SELECT o FROM DoctorDiagnosis o where o.patient =" + ID, DoctorDiagnosis.class).getResultList();
        
        
            if (doctordiagnosis == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            
            
           for(int i = 0; i < doctordiagnosis.size(); i++){
        	   DiagnosisJson.add(doctordiagnosis.get(i).toJson());
            }

            
            return new ResponseEntity<String>(DiagnosisJson.toString(),headers,HttpStatus.OK);
            
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    	
    }
    
    
    

    @RequestMapping
    public String index() {
        return "jsonpatientdiagnosis/index";
    }
}
