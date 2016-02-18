package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/patientmedicationses")
@Controller
@RooWebScaffold(path = "patientmedicationses", formBackingObject = PatientMedications.class)
@RooWebJson(jsonObject = PatientMedications.class)
public class PatientMedicationsController {
}
