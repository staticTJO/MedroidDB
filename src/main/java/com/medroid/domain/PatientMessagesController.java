package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientmessageses")
@Controller
@RooWebScaffold(path = "patientmessageses", formBackingObject = PatientMessages.class)
@RooWebJson(jsonObject = PatientMessages.class)
public class PatientMessagesController {
}
