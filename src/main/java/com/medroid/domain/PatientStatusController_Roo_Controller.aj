// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.PatientStatus;
import com.medroid.domain.PatientStatusController;
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

privileged aspect PatientStatusController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PatientStatusController.create(@Valid PatientStatus patientStatus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, patientStatus);
            return "patientstatuses/create";
        }
        uiModel.asMap().clear();
        patientStatus.persist();
        return "redirect:/patientstatuses/" + encodeUrlPathSegment(patientStatus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PatientStatusController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PatientStatus());
        return "patientstatuses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PatientStatusController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("patientstatus", PatientStatus.findPatientStatus(id));
        uiModel.addAttribute("itemId", id);
        return "patientstatuses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PatientStatusController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("patientstatuses", PatientStatus.findPatientStatusEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) PatientStatus.countPatientStatuses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("patientstatuses", PatientStatus.findAllPatientStatuses(sortFieldName, sortOrder));
        }
        return "patientstatuses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PatientStatusController.update(@Valid PatientStatus patientStatus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, patientStatus);
            return "patientstatuses/update";
        }
        uiModel.asMap().clear();
        patientStatus.merge();
        return "redirect:/patientstatuses/" + encodeUrlPathSegment(patientStatus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PatientStatusController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, PatientStatus.findPatientStatus(id));
        return "patientstatuses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PatientStatusController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PatientStatus patientStatus = PatientStatus.findPatientStatus(id);
        patientStatus.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/patientstatuses";
    }
    
    void PatientStatusController.populateEditForm(Model uiModel, PatientStatus patientStatus) {
        uiModel.addAttribute("patientStatus", patientStatus);
    }
    
    String PatientStatusController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
