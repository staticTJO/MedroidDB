package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientstatuses")
@Controller
@RooWebScaffold(path = "patientstatuses", formBackingObject = PatientStatus.class)
@RooWebJson(jsonObject = PatientStatus.class)
public class PatientStatusController {
}
