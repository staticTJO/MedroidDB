package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Careteam.class)
@Controller
@RequestMapping("/careteams")
@RooWebScaffold(path = "careteams", formBackingObject = Careteam.class)
public class CareteamController {
}
