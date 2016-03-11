// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import com.medroid.domain.DoctorMessages;
import com.medroid.domain.DoctorMessagesController;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
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

privileged aspect DoctorMessagesController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DoctorMessagesController.create(@Valid DoctorMessages doctorMessages, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, doctorMessages);
            return "doctormessageses/create";
        }
        uiModel.asMap().clear();
        doctorMessages.persist();
        return "redirect:/doctormessageses/" + encodeUrlPathSegment(doctorMessages.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DoctorMessagesController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DoctorMessages());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Doctor.countDoctors() == 0) {
            dependencies.add(new String[] { "doctor", "doctors" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "doctormessageses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DoctorMessagesController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("doctormessages", DoctorMessages.findDoctorMessages(id));
        uiModel.addAttribute("itemId", id);
        return "doctormessageses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DoctorMessagesController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("doctormessageses", DoctorMessages.findDoctorMessagesEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DoctorMessages.countDoctorMessageses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("doctormessageses", DoctorMessages.findAllDoctorMessageses(sortFieldName, sortOrder));
        }
        return "doctormessageses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DoctorMessagesController.update(@Valid DoctorMessages doctorMessages, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, doctorMessages);
            return "doctormessageses/update";
        }
        uiModel.asMap().clear();
        doctorMessages.merge();
        return "redirect:/doctormessageses/" + encodeUrlPathSegment(doctorMessages.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DoctorMessagesController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, DoctorMessages.findDoctorMessages(id));
        return "doctormessageses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DoctorMessagesController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DoctorMessages doctorMessages = DoctorMessages.findDoctorMessages(id);
        doctorMessages.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/doctormessageses";
    }
    
    void DoctorMessagesController.populateEditForm(Model uiModel, DoctorMessages doctorMessages) {
        uiModel.addAttribute("doctorMessages", doctorMessages);
        uiModel.addAttribute("doctors", Doctor.findAllDoctors());
    }
    
    String DoctorMessagesController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
