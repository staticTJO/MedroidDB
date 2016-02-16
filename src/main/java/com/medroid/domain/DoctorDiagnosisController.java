package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/doctordiagnoses")
@Controller
@RooWebScaffold(path = "doctordiagnoses", formBackingObject = DoctorDiagnosis.class)
public class DoctorDiagnosisController {
}
