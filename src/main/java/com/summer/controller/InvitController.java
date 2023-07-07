package com.summer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.summer.dto.AccountVO;
import com.summer.service.ShService;

@Controller
@RequestMapping("/invit/*")
public class InvitController {
	
	@Autowired
	ShService service;
	
	// 멤버초대ㄴ
	@RequestMapping(value="/inviteInsert", method=RequestMethod.GET)
	public String inviteInsert(AccountVO vo, Model model) {
	    service.inviteInsert(vo);
	    return "redirect:summer_sh/reminder";
	}

	// 멤버초대 수락 리스트
	/*
	 * @RequestMapping(value="/inviteAupdate", method=RequestMethod.POST) public
	 * String inviteAupdate(String uid, int pgsrn, Model model) {
	 * service.inviteAupdate(uid, pgsrn); return "redirect:/reminder"; }
	 * 
	 * // 멤버초대 거절 리스트
	 * 
	 * @RequestMapping(value="/inviteCupdate", method=RequestMethod.POST) public
	 * String inviteCupdate(String uid, int pgsrn, Model model) {
	 * service.inviteCupdate(uid, pgsrn); return "redirect:/reminder"; }
	 */
}
