package com.summer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.summer.dto.UserVO;
import com.summer.service.UserService;

@Controller
public class BasicController {

	@Autowired
	UserService service;

	/*
	 * @RequestMapping("/basic.do") public String home(Model model) {
	 * model.addAttribute("result", "hyeeun"); return "result"; }
	 */

	@RequestMapping("/list.do")
	public String getUserList(Model model) {
		model.addAttribute("list", service.readAll());
		return "result";
	}

	@RequestMapping("/select.do")
	public String getUser(Model model, @RequestParam int no) {
		model.addAttribute("select", service.select(no));
		return "result";
	}

	@RequestMapping("/insert.do")
	public String insertUser(@ModelAttribute UserVO vo) {
		if (vo != null) {
			service.insert(vo);
		}
		return "redirect:/list.do";
	}

	@RequestMapping("/update.do")
	public String updateUser(Model model, UserVO vo) {
		model.addAttribute("update", service.update(vo));
		return "result";
	}

	@RequestMapping("/delete.do")
	public String deleteUser(@RequestParam int no) {
		service.delete(no);
		return "redirect:/list.do";
	}
}
