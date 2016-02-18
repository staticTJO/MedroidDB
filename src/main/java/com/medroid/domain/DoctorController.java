package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/doctors")
@Controller
@RooWebScaffold(path = "doctors", formBackingObject = Doctor.class)
@RooWebJson(jsonObject = Doctor.class)
public class DoctorController {
}
