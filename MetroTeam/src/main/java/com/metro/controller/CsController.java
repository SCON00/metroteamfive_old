package com.metro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cs/")
public class CsController {
	
	@RequestMapping(value="{url}.do")
	public String common(@PathVariable String url) {
		return "cs/" + url;
	}
}
