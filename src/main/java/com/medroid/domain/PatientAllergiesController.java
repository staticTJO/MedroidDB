package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientallergieses")
@Controller
@RooWebScaffold(path = "patientallergieses", formBackingObject = PatientAllergies.class)
@RooWebJson(jsonObject = PatientAllergies.class)
public class PatientAllergiesController {
}
