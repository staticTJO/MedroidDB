// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import com.medroid.domain.LogUserDoctor;
import com.medroid.domain.LogUserDoctorController;
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

privileged aspect LogUserDoctorController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String LogUserDoctorController.create(@Valid LogUserDoctor logUserDoctor, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, logUserDoctor);
            return "loguserdoctors/create";
        }
        uiModel.asMap().clear();
        logUserDoctor.persist();
        return "redirect:/loguserdoctors/" + encodeUrlPathSegment(logUserDoctor.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String LogUserDoctorController.createForm(Model uiModel) {
        populateEditForm(uiModel, new LogUserDoctor());
        return "loguserdoctors/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String LogUserDoctorController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("loguserdoctor", LogUserDoctor.findLogUserDoctor(id));
        uiModel.addAttribute("itemId", id);
        return "loguserdoctors/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String LogUserDoctorController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("loguserdoctors", LogUserDoctor.findLogUserDoctorEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) LogUserDoctor.countLogUserDoctors() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("loguserdoctors", LogUserDoctor.findAllLogUserDoctors(sortFieldName, sortOrder));
        }
        return "loguserdoctors/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String LogUserDoctorController.update(@Valid LogUserDoctor logUserDoctor, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, logUserDoctor);
            return "loguserdoctors/update";
        }
        uiModel.asMap().clear();
        logUserDoctor.merge();
        return "redirect:/loguserdoctors/" + encodeUrlPathSegment(logUserDoctor.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String LogUserDoctorController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, LogUserDoctor.findLogUserDoctor(id));
        return "loguserdoctors/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String LogUserDoctorController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        LogUserDoctor logUserDoctor = LogUserDoctor.findLogUserDoctor(id);
        logUserDoctor.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/loguserdoctors";
    }
    
    void LogUserDoctorController.populateEditForm(Model uiModel, LogUserDoctor logUserDoctor) {
        uiModel.addAttribute("logUserDoctor", logUserDoctor);
        uiModel.addAttribute("doctors", Doctor.findAllDoctors());
    }
    
    String LogUserDoctorController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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