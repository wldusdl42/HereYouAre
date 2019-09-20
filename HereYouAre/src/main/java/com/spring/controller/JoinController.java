package com.spring.controller;

import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.JoinRealtor;
import com.spring.dto.JoinUser;
import com.spring.service.JoinService;
import com.spring.service.UserMailSendService;

@Controller
public class JoinController {
	
	String bcryptPw = null;
	
	@Autowired
    private JoinService service;
	
	@Autowired
	private UserMailSendService mailsender;
	
	
	@RequestMapping("/join")
	public String home() {
		return "main";
	}
	
	@RequestMapping(value = "/joinTypeUser", method = RequestMethod.POST)
	public String signupTypeUser() {
		return "/join/joinAgreeUser";
	} 
	
	@RequestMapping(value = "/joinAgreeUser", method = RequestMethod.POST)
	public String signupAgreeUser() {
		return "/join/joinUser";
	} 
	
	@RequestMapping(value = "/joinUser", method = RequestMethod.GET)
	public String signupUser(Model model, HttpServletRequest request, JoinUser juser) {
		String email = request.getParameter("e1")+"@"+request.getParameter("e2");
		String address = request.getParameter("zip_code")+", "+request.getParameter("a1")+" "+request.getParameter("a2");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		System.out.println("--------------------------------> Join Controller Email "+email);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String bcryptPassword = passwordEncoder.encode(password);
		bcryptPw = bcryptPassword;
		
		model.addAttribute("name",name);
		
		juser.setEmail(email);
		juser.setAddress(address);
		juser.setName(name);
		juser.setPassword(bcryptPw);
		
		service.insertUser(juser);
		mailsender.mailSendWithUserKey(email, name, request);
		return "/join/joinUserRes";
//		try {
//			service.insertUser(juser);
//	    }
//		catch (DuplicateKeyException e) {
//			e.getMessage();
//	    }
//		
//		mailsender.mailSendWithUserKey(email, name, request);
//	    return "/join/joinUserRes";
	}
	
	@RequestMapping(value="key_alter", method = RequestMethod.GET)
	public String key_alterConfirm(@RequestParam("email") String email, @RequestParam("checkEmail") String checkEmail) {
		mailsender.alterService(email, checkEmail); //if its mailsender, @Autowired
		return "/join/joinUserSuccess";
	}
	
	
	
		
	
	
	
	@RequestMapping(value = "/joinTypeRealtor", method = RequestMethod.POST)
	public String signupTypeRealtor() {
		return "/join/joinAgreeRealtor";
	}
	
	@RequestMapping(value = "/joinAgreeRealtor", method = RequestMethod.POST)
	public String signupAgreeRealtor() {
		return "/join/joinRealtor";
	}
	
	@RequestMapping(value = "/joinRealtor", method = RequestMethod.GET)
	public String signupRealtor(Model model, HttpServletRequest request, JoinRealtor jreal) {
		String rEmail = request.getParameter("e1")+"@"+request.getParameter("e2");
		String rAddress = request.getParameter("zip_code")+", "+request.getParameter("a1")+" "+request.getParameter("a2");
		String rAgencyAddress = request.getParameter("zip_code_agency")+", "+request.getParameter("a1_agency")+" "+request.getParameter("a2_agency");
		String rName = request.getParameter("name");
		String rPassword = request.getParameter("password");		
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String bcryptPassword = passwordEncoder.encode(rPassword);
		bcryptPw = bcryptPassword;
		
		model.addAttribute("name",rName);
		
		
		jreal.setEmail(rEmail);
		jreal.setAddress(rAddress);
		jreal.setName(rName);
		jreal.setPassword(bcryptPw);
		jreal.setAgencyAddress(rAgencyAddress);
		
		
		service.insertRealtor(jreal);
		mailsender.mailSendWithUserKey_Realtor(rEmail, rName, request);
		return "/join/joinRealtorRes";
		
	}
	
	@RequestMapping(value="key_alter_Realtor", method = RequestMethod.GET)
	public String key_alterConfirm_Realtor(@RequestParam("email") String email, @RequestParam("checkEmail") String checkEmail) {
		mailsender.alterService_Realtor(email, checkEmail); //if its mailsender, @Autowired
		return "/join/joinRealtorSuccess";
	}
	

	@RequestMapping(value="/emailck")
    @ResponseBody
    public Map<Object, Object> emailck(@RequestParam("email") String email) {
        
        int cnt = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        cnt = service.emailck(email);
        map.put("cnt", cnt);
        System.out.println("--------------------->Homecontroller Email count: "+email+" - "+cnt);
        return map;
    }
}

