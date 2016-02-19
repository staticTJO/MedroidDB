package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/loguserdoctors")
@Controller
@RooWebScaffold(path = "loguserdoctors", formBackingObject = LogUserDoctor.class)
public class LogUserDoctorController {
}
