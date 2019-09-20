package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.HallOfFame;
import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.service.HallOfFameService;

@Controller
public class HallOfFameController {
	
	@Autowired
    private HallOfFameService hallOfFameSvc;
	
	@RequestMapping(value = "/FameBoardForm",method=RequestMethod.GET)
    public String FameBoardForm()
    {
		System.out.println("FameBoardForm");
        return "manage/FameBoardForm";
    }
	
	@RequestMapping(value = "/FameBoardListCall",method=RequestMethod.GET)
    public String FameBoardListCall(Model model)
    {
		System.out.println("FameBoardList");
		int page_id = hallOfFameSvc.getAllCount();
		List<HallOfFame> hallList = hallOfFameSvc.getHallOfFameList(page_id);
		HallOfFame hallOfFame = hallOfFameSvc.getHallOfFame(page_id);
		model.addAttribute("hallList", hallList);
		return "HallOfFame/HallOfFameList"; 
    }
	
	@RequestMapping(value = "/fameBoardAdd")
    public String fameBoardAdd(HttpServletRequest request, HttpServletResponse response,String editor,String title)
    {
    	System.out.println("fameBoardAdd");
    	
    	HallOfFame hallOfFame = new HallOfFame();
    	hallOfFame.setTitle(title);
    	String aa = "<img";
    	int idx = editor.indexOf(aa);
    	String bb = " />";
    	int idx2 = editor.indexOf(bb);
    	String cc = editor.substring(idx, idx2+3);
    	String reword = editor.replace(cc, "");
    	
    	aa = "src=";
    	idx = cc.indexOf(aa);
    	bb = "style=";
    	idx2 = cc.indexOf(bb);
    	cc = cc.substring(idx+5, idx2-2);
    	System.out.println("cc:"+cc);
    	
    	hallOfFame.setContents_image(cc);
    	hallOfFame.setContents(reword);
    	hallOfFameSvc.saveHallOfFame(hallOfFame);
    	
        return "redirect:/HallOfFameList";
    }
	
	@RequestMapping(value = "/HallOfFameList")
    public String fameBoardAdd(HttpServletRequest request, HttpServletResponse response, Model model)
    {
    	System.out.println("HallOfFameList");
    	int allCount = hallOfFameSvc.getAllCount();
    	System.out.println("allCount:"+allCount);
    	HallOfFame hallOfFame = hallOfFameSvc.getHallOfFame(allCount);
    	String con=hallOfFame.getContents();
    	System.out.println("con:"+con);
    	model.addAttribute("hallOfFame", hallOfFame);
    	
        return "HallOfFame/HallOfFameList";
    }
	
	@RequestMapping(value= "/hallOfFameContents", method= RequestMethod.GET) 
	public ModelAndView listNoticeBoard(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("hallOfFameContents");
		
		String bId = request.getParameter("bId");
		int id = Integer.parseInt(bId);
		
		System.out.println("id:"+id);
		HallOfFame hallOfFame = hallOfFameSvc.getHallOfFame(id);
		model.addAttribute("hallOfFame", hallOfFame);
		return new ModelAndView("HallOfFame/HallOfFameContents");
	}
}
