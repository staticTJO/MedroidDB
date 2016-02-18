package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/doctormessageses")
@Controller
@RooWebScaffold(path = "doctormessageses", formBackingObject = DoctorMessages.class)
@RooWebJson(jsonObject = DoctorMessages.class)
public class DoctorMessagesController {
}
