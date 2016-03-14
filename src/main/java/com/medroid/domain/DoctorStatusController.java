package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/doctorstatuses")
@Controller
@RooWebScaffold(path = "doctorstatuses", formBackingObject = DoctorStatus.class)
@RooWebJson(jsonObject = DoctorStatus.class)
public class DoctorStatusController {
}
