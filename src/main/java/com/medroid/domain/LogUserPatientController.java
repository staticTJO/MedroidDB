package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/loguserpatients")
@Controller
@RooWebScaffold(path = "loguserpatients", formBackingObject = LogUserPatient.class)
@RooWebJson(jsonObject = LogUserPatient.class)
public class LogUserPatientController {
}
