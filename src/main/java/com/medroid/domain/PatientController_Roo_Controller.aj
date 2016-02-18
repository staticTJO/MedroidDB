// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Careteam;
import com.medroid.domain.DoctorDiagnosis;
import com.medroid.domain.Patient;
import com.medroid.domain.PatientAllergies;
import com.medroid.domain.PatientController;
import com.medroid.domain.PatientMedications;
import com.medroid.domain.PatientMessages;
import com.medroid.domain.PatientNotifications;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PatientController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PatientController.create(@Valid Patient patient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, patient);
            return "patients/create";
        }
        uiModel.asMap().clear();
        patient.persist();
        return "redirect:/patients/" + encodeUrlPathSegment(patient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PatientController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Patient());
        return "patients/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PatientController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("patient", Patient.findPatient(id));
        uiModel.addAttribute("itemId", id);
        return "patients/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PatientController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("patients", Patient.findPatientEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Patient.countPatients() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("patients", Patient.findAllPatients(sortFieldName, sortOrder));
        }
        return "patients/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PatientController.update(@Valid Patient patient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, patient);
            return "patients/update";
        }
        uiModel.asMap().clear();
        patient.merge();
        return "redirect:/patients/" + encodeUrlPathSegment(patient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PatientController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Patient.findPatient(id));
        return "patients/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PatientController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Patient patient = Patient.findPatient(id);
        patient.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/patients";
    }
    
    void PatientController.populateEditForm(Model uiModel, Patient patient) {
        uiModel.addAttribute("patient", patient);
        uiModel.addAttribute("careteams", Careteam.findAllCareteams());
        uiModel.addAttribute("doctordiagnoses", DoctorDiagnosis.findAllDoctorDiagnoses());
        uiModel.addAttribute("patientallergieses", PatientAllergies.findAllPatientAllergieses());
        uiModel.addAttribute("patientmedicationses", PatientMedications.findAllPatientMedicationses());
        uiModel.addAttribute("patientmessageses", PatientMessages.findAllPatientMessageses());
        uiModel.addAttribute("patientnotificationses", PatientNotifications.findAllPatientNotificationses());
    }
    
    String PatientController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
