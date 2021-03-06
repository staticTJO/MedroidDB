// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import com.medroid.domain.DoctorNotifications;
import com.medroid.domain.DoctorNotificationsController;
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

privileged aspect DoctorNotificationsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DoctorNotificationsController.create(@Valid DoctorNotifications doctorNotifications, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, doctorNotifications);
            return "doctornotificationses/create";
        }
        uiModel.asMap().clear();
        doctorNotifications.persist();
        return "redirect:/doctornotificationses/" + encodeUrlPathSegment(doctorNotifications.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DoctorNotificationsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DoctorNotifications());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Doctor.countDoctors() == 0) {
            dependencies.add(new String[] { "doctor", "doctors" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "doctornotificationses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DoctorNotificationsController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("doctornotifications", DoctorNotifications.findDoctorNotifications(id));
        uiModel.addAttribute("itemId", id);
        return "doctornotificationses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DoctorNotificationsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("doctornotificationses", DoctorNotifications.findDoctorNotificationsEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DoctorNotifications.countDoctorNotificationses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("doctornotificationses", DoctorNotifications.findAllDoctorNotificationses(sortFieldName, sortOrder));
        }
        return "doctornotificationses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DoctorNotificationsController.update(@Valid DoctorNotifications doctorNotifications, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, doctorNotifications);
            return "doctornotificationses/update";
        }
        uiModel.asMap().clear();
        doctorNotifications.merge();
        return "redirect:/doctornotificationses/" + encodeUrlPathSegment(doctorNotifications.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DoctorNotificationsController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, DoctorNotifications.findDoctorNotifications(id));
        return "doctornotificationses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DoctorNotificationsController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DoctorNotifications doctorNotifications = DoctorNotifications.findDoctorNotifications(id);
        doctorNotifications.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/doctornotificationses";
    }
    
    void DoctorNotificationsController.populateEditForm(Model uiModel, DoctorNotifications doctorNotifications) {
        uiModel.addAttribute("doctorNotifications", doctorNotifications);
        uiModel.addAttribute("doctors", Doctor.findAllDoctors());
    }
    
    String DoctorNotificationsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
