package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "home";
	}

	@RequestMapping("/root")
	public String indexoOne() {
		return "index";
	}

	@RequestMapping("/getAll")
	@ResponseBody
	public List<Integer> getAll(@RequestParam("id") List<Integer> id) {
		System.err.println(id);
		List<Integer> list = new ArrayList<>();
		list.add(1);
		list.add(5);
		list.add(15);
		return list;
	}
}
