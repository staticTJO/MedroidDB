package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientnotificationses")
@Controller
@RooWebScaffold(path = "patientnotificationses", formBackingObject = PatientNotifications.class)
@RooWebJson(jsonObject = PatientNotifications.class)
public class PatientNotificationsController {
}
