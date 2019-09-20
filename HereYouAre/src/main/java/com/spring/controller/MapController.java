package com.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.Bmember;
import com.spring.dto.Tbl_area;
import com.spring.dto.Tbl_heartlist;
import com.spring.service.BmemberService;
import com.spring.service.Service;
import com.spring.service.Tbl_areaService;
import com.spring.service.Tbl_heartlistService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	 
	String[] dangerIndexInfo = null;
	String[] tradeIndexInfo = null;
	String[] livingPopInfo = null;
	Map<String,List<String[]>> storeList = new HashMap<String,List<String[]>>();
	
	@Autowired
	private Service service; 
	
	@Autowired
	private Tbl_areaService service2;
	 
	@Autowired
	private Tbl_heartlistService service3;
	
	@Autowired
    private BmemberService employeeSvc;
	
	
	//-----------[ 홈/매물클릭  ]--------------------------------------------------------
    @RequestMapping("/consult_request")
    public ModelAndView map(@ModelAttribute Tbl_area dto, int id) 
    {
    	ModelAndView mav= new ModelAndView();
    	System.out.println("test1: "+id);
    	
    	String[] strArr =service2.getEstateInfoById(id);
    	
		mav.setViewName("map/consult_request");
		mav.addObject("area",strArr);
		
		return mav;
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
	public String hereyouare(Model model) {

		model.addAttribute("allHeartId",null); 
		model.addAttribute("estateInfo",null);
		model.addAttribute("heartInfo",null); 
		
		model.addAttribute("coords", null);
		model.addAttribute("dangerIndexInfo", null);
		model.addAttribute("tradeIndexInfo", null);
		model.addAttribute("livingPopInfo", null); 
		model.addAttribute("storeList", null);
		
		model.addAttribute("q01", null);
		model.addAttribute("q02", null);
		model.addAttribute("q03", null);
		model.addAttribute("q04", null);
		model.addAttribute("q05", null);
		model.addAttribute("q06", null);
		model.addAttribute("q07", null);
		model.addAttribute("q08", null);
		model.addAttribute("q09", null);
		model.addAttribute("q10", null);
		model.addAttribute("q12", null);
		model.addAttribute("q13", null);
		model.addAttribute("q14", null);
		model.addAttribute("q15", null);
		  
		return "HereYouAre";
	}
	
	
	@RequestMapping(value = "/submitCd", method = RequestMethod.GET)
	public String getParam(String adongCd, Model model , HttpSession session) {
		String signguCd = adongCd.substring(0,5);
		String path = session.getServletContext().getRealPath("/resources/json/");
		
		System.out.println("시군구 코드: " +signguCd);
		System.out.println("행정동 코드: "+adongCd);
		 
		Bmember bm = (Bmember)session.getAttribute("bm");
		
		double[][] coords = service.getCoordsPoint(adongCd+"_"+path);
		dangerIndexInfo = service.getDong_DangerIndex(adongCd+"_"+path);
		tradeIndexInfo = service.getGu_TradeIndex(signguCd+"_"+path);
		livingPopInfo = service.getLivingPop(adongCd+"_"+path);
		storeList = service.getStoreList2(adongCd+"_"+path);
		String[][] estateInfo = service2.getEstateInfo(adongCd);
		List<Bmember> realtor = employeeSvc.allRealtor();
		
		String[][] heartInfo = null;
		 
		if(bm!=null)
		{
			System.out.println("test: "+bm.getEmail());
			heartInfo = service3.getHeartInfo(bm.getEmail());
		}
		
		String[] allHeartId = service3.getAllHeartInfo();
		
		model.addAttribute("allHeartId",allHeartId); 
		model.addAttribute("realtor",realtor); 
		model.addAttribute("estateInfo",estateInfo); 
		model.addAttribute("heartInfo",heartInfo); 
		 
		List<String[]> q01 = storeList.get("Q01");
		List<String[]> q02 = storeList.get("Q02");
		List<String[]> q03 = storeList.get("Q03");
		List<String[]> q04 = storeList.get("Q04");
		List<String[]> q05 = storeList.get("Q05");
		List<String[]> q06 = storeList.get("Q06");
		List<String[]> q07 = storeList.get("Q07");
		List<String[]> q08 = storeList.get("Q08");
		List<String[]> q09 = storeList.get("Q09");
		List<String[]> q10 = storeList.get("Q10");
		List<String[]> q12 = storeList.get("Q12");
		List<String[]> q13 = storeList.get("Q13");
		List<String[]> q14 = storeList.get("Q14");
		List<String[]> q15 = storeList.get("Q15"); 
		
		model.addAttribute("coords", coords);
		model.addAttribute("dangerIndexInfo", dangerIndexInfo);
		model.addAttribute("tradeIndexInfo", tradeIndexInfo);
		model.addAttribute("livingPopInfo", livingPopInfo);
		model.addAttribute("storeList", storeList);
		 
		model.addAttribute("q01", q01);
		model.addAttribute("q02", q02);
		model.addAttribute("q03", q03);
		model.addAttribute("q04", q04);
		model.addAttribute("q05", q05);
		model.addAttribute("q06", q06);
		model.addAttribute("q07", q07);
		model.addAttribute("q08", q08); 
		model.addAttribute("q09", q09);
		model.addAttribute("q10", q10);
		model.addAttribute("q12", q12);
		model.addAttribute("q13", q13);
		model.addAttribute("q14", q14);
		model.addAttribute("q15", q15);
		
		  
		return "HereYouAre"; 
	}
	
	@RequestMapping(value="/insertHeartInfo")
    @ResponseBody
    public int insertHeartInfo(@RequestParam("email") String email, @RequestParam("id") String id) {
        
		int val = 0;
		int heartCount = 0;
		
		System.out.println("ajax insert email: "+email);
		System.out.println("ajax insert id: "+id);
		
		Tbl_heartlist dto = new Tbl_heartlist();
		
		dto.setEmail(email);
		dto.setId(Integer.valueOf(id));
		
		val = service3.insertHeartInfo(dto);
		heartCount = service3.getHeartCount(Integer.valueOf(id));
		
        return heartCount;
    }
	
	@RequestMapping(value="/deleteHeartInfo")
	@ResponseBody
	public int deleteHeartInfo(@RequestParam("email") String email, @RequestParam("id") String id) {
		
		int val = 0;
		int heartCount = 0;
		
		System.out.println("ajax delete email: "+email);
		System.out.println("ajax delete id: "+id);
		
		Tbl_heartlist dto = new Tbl_heartlist();
		
		dto.setEmail(email);
		dto.setId(Integer.valueOf(id));
		
		val = service3.deleteHeartInfo(dto);
		heartCount = service3.getHeartCount(Integer.valueOf(id));
		
		return heartCount;
	} 
	
	 @RequestMapping("/HowToUse1")
	    public String ex() 
	    {
	    	
			return "HowToUseEx";
	    }
	 @RequestMapping("/StarEx1")
	 public String ex2() 
	 {
		 
		 return "StarEx";
	 }

}
