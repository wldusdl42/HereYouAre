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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.Bmember;
import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.dto.Tbl_heartlist;
import com.spring.dto.Tbl_join;
import com.spring.service.BmemberService;
import com.spring.service.NoticeBoardService;
import com.spring.service.Tbl_heartlistService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HereYouAreController {

	@Autowired
    private NoticeBoardService noticeBoardSvc; 
	@Autowired
    private BmemberService employeeSvc;
	@Autowired
	private Tbl_heartlistService heartListSvc;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping({"/","/main"})
	public String home(Locale locale, Model model, HttpSession session, Tbl_heartlist heartlist) {
		PageMaker pm = new PageMaker();
		pm.setPageid(0);
    	pm.setTotal(5);
		List<NoticeBoard> getMainNoticeBoardList = noticeBoardSvc.getList(pm);
		model.addAttribute("getMainNoticeBoardList", getMainNoticeBoardList);
		
		return "main";
		}
			
		@RequestMapping("/heartlist")
		@ResponseBody
	    public List<Tbl_join> heartlist(HttpSession session, Bmember bm, Tbl_heartlist heartlist, Model model)
	    {
			bm = (Bmember)session.getAttribute("bm");
			int heartID = heartlist.getHeartId();
			List<Tbl_join> join = heartListSvc.joinArea(heartID);
			model.addAttribute("join", join);
	        return join;
	    }

	
	@RequestMapping(value = "/JoinMember",method=RequestMethod.GET)
    public String JoinMember()
    {
    	System.out.println("JoinMember");
        return "JoinMember";
    }
	
	@RequestMapping(value = "/SignIn",method=RequestMethod.GET)
    public String SignIn()
    {
    	System.out.println("SignIn");
        return "SignIn";
    }
	
	@RequestMapping(value = "/HowToUse",method=RequestMethod.GET)
    public String HowToUse()
    {
    	System.out.println("HowToUse");
        return "HowToUse";
    }
	
	@RequestMapping(value = "/Add",method=RequestMethod.GET)
    public String Add()
    {
    	System.out.println("Add");
        return "Add";
    }
	@RequestMapping(value = "/howToUse",method=RequestMethod.GET)
	public String howToUse()
	{
		return "HowToUseUser";
	}
	@RequestMapping(value = "/howToUse2",method=RequestMethod.GET)
	public String howToUse2()
	{
		return "HowToUseRealtor";
	}
	@RequestMapping(value = "/userAgreement",method=RequestMethod.GET)
	public String userAgreement()
	{
		return "userAgreement";
	}
	@RequestMapping(value = "/userPrivacy",method=RequestMethod.GET)
	public String userPrivacy()
	{
		return "userPrivacy";
	}
	@RequestMapping(value = "/userEstate",method=RequestMethod.GET)
	public String userEstate()
	{
		return "userEstate";
	}
}
