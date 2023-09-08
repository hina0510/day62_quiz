package com.care.root.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.member.dto.MemberDTO;
import com.care.root.member.service.MemberService;

@Controller
public class MemberController {
	@GetMapping("index")
	public String memberIndex() {
		return "/index";
	}
	@GetMapping("login")
	public String memberLogin() {
		return "member/login";
	}
	
	@Autowired(required = false) MemberService ms;
	@PostMapping("login_chk")
	public String loginChk(@RequestParam("id") String id, @RequestParam("pw") String pw,
			HttpSession session) {
		ArrayList<MemberDTO> list = ms.getList();
		for(MemberDTO dto:list) {
			if(id.equals(dto.getId())&&pw.equals(dto.getPw())) {
				session.setAttribute("id", id);
				return "member/successLogin";
			}
		}
		return "redirect:member/login";	
	}
	@GetMapping("successLogin")
	public String successLogin(@RequestParam("id") String id, HttpSession session) {
		return "member/successLogin";
	}
	@GetMapping("member_info")
	public String memberInfo(Model model, HttpServletRequest req) {
		ArrayList<MemberDTO> list = ms.getList();
		model.addAttribute("list", list);
		return "member/memberInfo";
	}
	@GetMapping("info")
	public String info(@RequestParam String id, Model model) {
		MemberDTO info = ms.getInfo(id);
		model.addAttribute("info", info);
		return "member/info";
	}
	@GetMapping("register")
	public String register() {
		return "member/register";
	}
	@PostMapping("insert")
	public String insert(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("addr") String addr) {
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setAddr(addr);
		ms.insertMember(dto);
		return "member/login";
	}
	@GetMapping("logout")
	public String memberLogout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "member/login";
	}
}
