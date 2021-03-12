package com.test.mypet.vet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VetController {
	
	@RequestMapping(value="/vet/list.action")
	public String list() {
		return "vet.list";
	}

}