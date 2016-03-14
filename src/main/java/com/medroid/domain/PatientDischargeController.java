package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientdischarges")
@Controller
@RooWebScaffold(path = "patientdischarges", formBackingObject = PatientDischarge.class)
@RooWebJson(jsonObject = PatientDischarge.class)
public class PatientDischargeController {
}
