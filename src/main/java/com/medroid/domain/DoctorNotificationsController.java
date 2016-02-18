package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/doctornotificationses")
@Controller
@RooWebScaffold(path = "doctornotificationses", formBackingObject = DoctorNotifications.class)
@RooWebJson(jsonObject = DoctorNotifications.class)
public class DoctorNotificationsController {
}
