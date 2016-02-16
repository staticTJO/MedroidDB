package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/patientallergieses")
@Controller
@RooWebScaffold(path = "patientallergieses", formBackingObject = PatientAllergies.class)
public class PatientAllergiesController {
}
