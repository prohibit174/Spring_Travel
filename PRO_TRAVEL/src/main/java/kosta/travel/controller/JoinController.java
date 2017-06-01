package kosta.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Join/*")
public class JoinController {

	@RequestMapping("/JoinForm")
	public String JoinForm(){
		return "Join/JoinForm";
	}
}
