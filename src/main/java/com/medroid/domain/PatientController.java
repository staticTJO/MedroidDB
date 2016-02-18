package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patients")
@Controller
@RooWebScaffold(path = "patients", formBackingObject = Patient.class)
@RooWebJson(jsonObject = Patient.class)
public class PatientController {
}
