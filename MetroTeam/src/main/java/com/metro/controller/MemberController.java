package com.metro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/")
public class MemberController {
	@RequestMapping(value="{url}.do")
	public String common(@PathVariable String url) {
		return "member/" + url;
	}
}
