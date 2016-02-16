package com.medroid.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/careteams")
@Controller
@RooWebScaffold(path = "careteams", formBackingObject = CareTeam.class)
public class CareTeamController {
}
