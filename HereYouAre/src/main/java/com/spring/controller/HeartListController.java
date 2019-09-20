package com.spring.controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.Bmember;
import com.spring.dto.Tbl_heartlist;
import com.spring.dto.Tbl_join;
import com.spring.service.Tbl_heartlistService;

@Controller
public class HeartListController {

	@Autowired
	private Tbl_heartlistService listSvc;

	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Model model, HttpSession session, Tbl_heartlist heartlist, Tbl_join list) {
		int heartID = heartlist.getHeartId();
		List<Tbl_join> join = listSvc.joinArea(heartID);
		model.addAttribute("join", join);
		Bmember bm = (Bmember)session.getAttribute("bm");
		return "user/mypage/get";
	}
	
	
	@RequestMapping(value="/deleteChoose", method = RequestMethod.POST)
	public String deleteChoose(HttpServletRequest request) {
		String[] ids = request.getParameterValues("chkbox");
		for(String id:ids) {
			System.out.println("--> deleteChoose: "+id);
			listSvc.deleteOnMypage(Integer.parseInt(id));
		}
		return "redirect:/get";
	}
	
	@RequestMapping(value="/deleteEach", method = RequestMethod.POST)
	@ResponseBody
	public String deleteEach(HttpServletRequest request) {
		String id = request.getParameter("id");
		
		System.out.println("------> controller deleteEach: "+id);
		listSvc.deleteOnMypage(Integer.parseInt(id));
		return "redirect:/get";
	}
	
	
	@RequestMapping(value="/deleteChooseSb", method = RequestMethod.POST)
	public String deleteChooseSb(HttpServletRequest request) {
		String[] ids = request.getParameterValues("chkbox");
		for(String id:ids) {
			System.out.println("--> deleteChooseSb: "+id);
			listSvc.deleteOnMypage(Integer.parseInt(id));
		}
		return "redirect:/main";
	}
}
