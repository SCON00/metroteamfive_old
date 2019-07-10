package com.metro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("train/")
public class TrainController {

	@RequestMapping(value="{url}.do")
	public String common(@PathVariable String url) {
		return "train/" + url;
	}
}
