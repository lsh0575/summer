package com.summer.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.summer.dto.AccountVO;
import com.summer.service.ShService;

//import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/account/*")
//@Log4j
public class AccountController {

	@Autowired
	ShService service;

	// 로그인 전 메인페이지ㅁ
	@RequestMapping(value = "/uBefore", method = RequestMethod.GET)
	public String beforeLogin() {
		return "summer_sh/account/beforeLoginMain";
	}

	// 이용약관 페이지
	@RequestMapping(value = "/termsOfUse", method = RequestMethod.GET)
	public String termsOfUse() {
		return "summer_sh/account/termsOfUse";
	}

	// 회원 가입
	@RequestMapping(value = "/uInsert", method = RequestMethod.GET)
	public String uInsert_view() {
		return "summer_sh/account/joinMembership";
	}

	// 회원 가입 처리
	@RequestMapping(value = "/uInsert", method = RequestMethod.POST)
	public String uInsert(AccountVO vo) throws IOException {
		try {
			service.uInsert(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/account/uBefore";
	}

	// 아이디 중복체크
	@RequestMapping(value = "/uIdCheck", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> uIdCheck(@RequestParam("id") String id) {
		String result = service.uIdCheck(id);
		if (result.equals("exist")) {
			return new ResponseEntity<>(result, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(result, HttpStatus.OK);
		}
	}

	// 이메일 중복체크
	@RequestMapping(value = "/uEmailCheck", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> uEmailCheck(@RequestParam("email") String email) {
		String result = service.uEmailCheck(email);
		if (result.equals("exist")) {
			return new ResponseEntity<>(result, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(result, HttpStatus.OK);
		}
	}

	// 로그인
	@RequestMapping(value = "/loginCheck", method = RequestMethod.GET)
	public String loginForm() {
		// 로그인 페이지로 이동하는 코드
		return "summer_sh/account/beforeLoginMain";
	}

	// 로그인 처리
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String loginCheck(AccountVO vo, HttpServletRequest request, Model model, HttpSession session) {
		if (service.loginCheck(vo, request) == 1) {
			// 로그인 성공
			session.setAttribute("userid", vo.getUserid());
			return "summer_sh/account/afterLoginMain";
		} else {
			// 로그인 실패
			model.addAttribute("error", "유효하지 않은 사용자 이름 또는 비밀번호입니다");
			return "summer_sh/account/beforeLoginMain";
		}
	}

	// 로그인 후 메인 페이지
	@RequestMapping(value = "/afterLoginMain", method = RequestMethod.GET)
	public String afterLogin() {
		return "summer_sh/account/afterLoginMain";
	}

	// 아이디 패스워드 찾기 페이지
	@RequestMapping(value = "/idPasswordSearch", method = RequestMethod.GET)
	public String idPasswordSearch() {
		return "summer_sh/account/idPasswordSearch";
	}

	// 아이디 찾기 처리
	@RequestMapping(value = "/idSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String idSearch(HttpServletResponse response, @RequestParam("searchKey") String searchKey, Model model)
			throws IOException {
		String id = service.idSearch(response, searchKey);
		if (id == null) {
			model.addAttribute("message", "가입된 아이디가 없습니다.");
		} else {
			model.addAttribute("message", "찾으시는 아이디는 " + id + "입니다.");
		}
		return "summer_sh/account/idPasswordSearch";
	}

	// 패스워드 찾기 처리
	@RequestMapping(value = "/pwSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public void pwSearch(@ModelAttribute AccountVO vo, HttpServletResponse response, String searchKey,
			String passSearchId) throws Exception {
		service.pwSearch(response, vo, searchKey, passSearchId);
	}

	// 메인페이지 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		service.logout(session);
		return "redirect:/account/uBefore";
	}

	// 사용자 마이페이지
	@RequestMapping(value = "/mmdRead", method = RequestMethod.GET)
	public String mmdRead(Model model, HttpServletRequest request) {
		// 사용자 정보 조회
		String userId = (String) request.getSession().getAttribute("userid"); // 실제 사용자 아이디로 대체해야 함
		AccountVO account = new AccountVO();
		account.setUserid(userId);
		AccountVO userDetails = service.mmdRead(account);

		// 사용자 정보를 모델에 추가
		model.addAttribute("userDetails", userDetails);

		// 사용자 마이페이지 JSP 페이지로 이동
		return "summer_sh/account/memberMypageDetail";
	}

	// 사용자 마이페이지 업데이트
	@RequestMapping(value = "/uUpdate", method = RequestMethod.GET)
	public String update_view(@ModelAttribute("vo") AccountVO vo, Model model, HttpServletRequest request) {
		// 사용자 정보 조회
		String userId = (String) request.getSession().getAttribute("userid"); // 실제 사용자 아이디로 대체해야 함
		AccountVO account = new AccountVO();
		account.setUserid(userId);
		AccountVO userUpdate = service.mmdRead(account);

		// 사용자 정보를 모델에 추가
		model.addAttribute("userUpdate", userUpdate);

		model.addAttribute("user", service.update_view(vo));

		return "summer_sh/account/memberMypageEdit";
	}

	// 사용자 마이페이지 업데이트 처리
	@RequestMapping(value = "/uUpdate", method = RequestMethod.POST)
	public String uUpdate(AccountVO vo) {
		service.uUpdate(vo);
		return "redirect:/account/mmdRead?userid=" + vo.getUserid();
	}

	// 사용자 탈퇴
	@RequestMapping(value = "/uDelete", method = RequestMethod.GET)
	public String uDelete_view() {
		return "summer_sh/account/memberCancel";
	}

	// 사용자 탈퇴 처리
	@RequestMapping(value = "/uDelete", method = RequestMethod.POST)
	public String uDelete(AccountVO vo, HttpServletRequest request, RedirectAttributes rttr) {
		// String userId = (String) request.getSession().getAttribute("userid");
		service.uDelete(vo);
		rttr.addFlashAttribute("success", "탈퇴 성공");
		return "redirect:/account/uBefore";
	}
}
