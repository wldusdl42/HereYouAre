package com.spring.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.dto.Tbl_area;
import com.spring.service.BmemberService;
import com.spring.service.NoticeBoardService;
import com.spring.service.Tbl_areaService;
@Controller
public class BmemberController
{	 
    @Autowired
    private BmemberService employeeSvc;
    
    @Autowired
	private Tbl_areaService service2;//매물 서비스
    
    @Autowired
    private NoticeBoardService noticeBoardSvc; 
    
    //-----------[ 로그인 ]--------------------------------------------------------
    @RequestMapping(value = "/login", method = RequestMethod.GET)
   	public String login(Model model,String uri)
       {	
    		model.addAttribute("uri",uri);
    		System.out.println(uri);
   		return "login/login";
   	}
    //-----------[ 로그아웃 ]--------------------------------------------------------
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
   	public String logout()
       {	
   		return "/login/logout";
   	}
    //-----------[ 상담신청]--------------------------------------------------------
    @RequestMapping(value = "/consult", method = RequestMethod.GET)
   	public ModelAndView consultReq(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	System.out.println("매물ID: "+dto.getId()+" 신청자: "+dto.getSender()+" 공인중개사: "+dto.getRecipient()+" 문의내용: "+dto.getContent()+" 연락처: "+dto.getPhoneNum()+" 상담유형: "+dto.getConsultType());
   		employeeSvc.insertConultList(dto);
   		
   		employeeSvc.insertNoteByUser(dto);//알림받는사람 유저
   		employeeSvc.insertNoteByReal(dto);//알림받는사람 공인중개사
   		 
		mav.setViewName("HereYouAre");
   		
		return mav;
   	}  
//-----------------------------------------------------------------------------------------------------------------------------------------------------
//                   공인중개사 
//-----------------------------------------------------------------------------------------------------------------------------------------------------
    //-----------[ 공인중개사/ 로그인 확인 ]--------------------------------------------------------
    @RequestMapping(value = "/loginCheck_realtor", method = RequestMethod.GET)
   	public ModelAndView loginCheck_realtor(@ModelAttribute Bmember dto, HttpSession session) {
    	
    	PageMaker pm = new PageMaker();
    	pm.setPageid(0);
		pm.setTotal(5);
		List<NoticeBoard> getMainNoticeBoardList = noticeBoardSvc.getList(pm);
		
    	//공인중개사 로그인 체크
    	ModelAndView mav= new ModelAndView();
   		Bmember bm=employeeSvc.realtor_allInfo(dto.getEmail());
//   		String uri = dto.getUri().substring(18,dto.getUri().length()-4);
   		
//   		System.out.println(uri);
   		
   		try {//아이디기 존재 할 경우
   			
   			if(!bm.getCheckEmail().toString().equals("y")) {//이메일 인증 안한 상태
   				System.out.println("이메일인증해주세용");
   				String result="이메일 인증을 해주세요";
   	   			mav.setViewName("warning");
   	   			mav.addObject("bm",result);
   	   			 
   	   		}
   	   		else {//이메일 인증 한 상태
   	   			
	   	   		if(bm.getChecking()==null)//가입승인 받지 않은 상태 -> 경고창
	   	   		{
	   	   			String result="가입승인 대기 해주세요..";
	   	   			mav.setViewName("warning");
	   	   			mav.addObject("bm",result);
	   	   		}
	   	   		else {//가입승인 받은 경우 -> 로그인페이지
	   	   		
	   	   			if(dto.getPassword().toString().equals(bm.getPassword().toString())){
	   	   				//비밀번호가 일치한다면 -> 환영합니다 /공인중개사/ 님
		   	   			mav.setViewName("/main");
		   	   			session.setAttribute("bm",bm);
		   	   			session.setAttribute("getMainNoticeBoardList",getMainNoticeBoardList);
   	   				}
	   	   			else {
	   	   				//비밀번호가 일치하지 않은 경우
	   	   	   			String result="비밀번호가 일치하지 않습니다.";
	   	   	   			
	   	   	   			mav.setViewName("login/login");
	   	   	   			mav.addObject("bm1",result);
	   	   			}
	   	   		}
   	   			
   	   		}
   		}
   		catch(Exception e){//아이디가 없을 경우 exception 발생
   			e.printStackTrace();
   			
   			String result="아이디가 존재하지 않습니다.";

   			mav.setViewName("login/login");
   			mav.addObject("bm1",result);
   		}
   		
		return mav;
   	}
    //-----------[ 공인중개사/ 마이페이지 홈]--------------------------------------------------------
    @RequestMapping(value = "/real_mypage", method = RequestMethod.GET)
   	public ModelAndView real_mypage(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	List<Bmember> read_list = employeeSvc.Read();
    	
		mav.setViewName("realtor/mypage/dashboard");
   		mav.addObject("read_list",read_list);
		
		return mav;
   	}   
    //-----------[ 공인중개사/ todoList]--------------------------------------------------------
    @RequestMapping(value = "/create_todoList", method = RequestMethod.POST)
   	public ModelAndView create_todoList(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	employeeSvc.Create(dto);
    	List<Bmember> read_list = employeeSvc.Read();
    	
		mav.setViewName("realtor/mypage/dashboard");
		mav.addObject("read_list",read_list);
		
		return mav;
   	}   
   //-----------[ 공인중개사/ todoList]--------------------------------------------------------
    @RequestMapping(value = "/update_todoList", method = RequestMethod.GET)
   	public ModelAndView update_todoList(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	employeeSvc.Update(dto);
    	
		mav.setViewName("realtor/mypage/dashboard");
   		
		return mav;
   	}   
    //-----------[ 공인중개사/ todoList]--------------------------------------------------------
    @RequestMapping(value = "/delete_todoList", method = RequestMethod.GET)
   	public ModelAndView delete_todoList(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	employeeSvc.Delete(dto);
    	List<Bmember> read_list = employeeSvc.Read();
    	
		mav.setViewName("realtor/mypage/dashboard");
		mav.addObject("read_list",read_list);
		
		return mav;
   	}   
    //-----------[ 공인중개사/ 마이페이지 프로필]--------------------------------------------------------
    @RequestMapping(value = "/real_profile", method = RequestMethod.GET)
   	public ModelAndView real_profile(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
   		
		mav.setViewName("realtor/mypage/user");
		
		return mav;
   	}   
    //-----------[ 공인중개사/ 프로필update ]--------------------------------------------------------
    @RequestMapping(value = "/real_update", method = RequestMethod.POST)
   	public ModelAndView real_update(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	employeeSvc.real_update(dto);
    	
    	session.setAttribute("bm",null);
    	Bmember bm=employeeSvc.realtor_allInfo(dto.getEmail());
    	session.setAttribute("bm",bm);
    	
		mav.setViewName("realtor/mypage/user");
   		
		return mav;
   	}
    //-----------[ 공인중개사/ 비밀번호변경을 위한 본인인증 ]--------------------------------------------------------
    @RequestMapping(value = "/pwCheck", method = RequestMethod.POST)
   	public ModelAndView pwCheck(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
  
    	Bmember bm = (Bmember) session.getAttribute("bm");
    		if(dto.getPassword().toString().equals(bm.getPassword().toString())){
  				//비밀번호가 일치한다면 
	   			mav.setViewName("realtor/changePw");
//	   			mav.addObject("count",dto.getCount());
				}
  			else {
  				//비밀번호가 일치하지 않은 경우
  	   			String result="비밀번호가 일치하지 않습니다.";
  	   			mav.setViewName("realtor/mypage/user");
  	   			mav.addObject("bm1",result);
  			}
    	
		return mav;
   	}
    //-----------[ 공인중개사/비밀번호변경]--------------------------------------------------------
    @RequestMapping(value = "/checkcheck", method = RequestMethod.POST)
   	public ModelAndView real_update_request(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    		if(!(dto.getPassword().length() < 6 && dto.getPassword().length() <= 16)){
    		
    	      String result = "비밀번호는 반드시 문자, 숫자, 특수기호가 들어가야하며(!@$%^&*만 가능) 6~16자리 입력이 가능합니다";
    	      mav.setViewName("realtor/changePw");
    	      mav.addObject("result",result);
    	      
    	    }

    		else if(!dto.getPassword().matches("([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])||([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])")) {
    	    	 String result = "비밀번호는 반드시 문자, 숫자, 특수기호가 들어가야하며(!@$%^&*만 가능) 6~16자리 입력이 가능합니다";
    	    	 mav.setViewName("realtor/changePw");
       	      	 mav.addObject("result",result);
    	    }
    	    
    		else if(dto.getPassword()==dto.getEmail()) {
    	    	String result ="이메일과 같은 문자로 비밀번호로 사용할 수 없습니다";
    	    	mav.setViewName("realtor/changePw");
      	      	mav.addObject("result",result);
    	    }
//    	    else if(SamePw0 > 1) {
//    	    	String result ="같은 문자가 3번 이상 반복될 수 없습니다";
//    	    	mav.setViewName("realtor/updateReal");
//      	      	mav.addObject("result",result);
//    	    }
//    	   if(SamePw1 > 1 || SamePw2 > 1 ) {
//    		   String result ="연속으로 반복되는 문자는(123,321,abc,cba 등) /n 사용할 수 없습니다";
//    		   mav.setViewName("realtor/updateReal");
//     	       mav.addObject("result",result);
//	      }
    	    
		return mav;
   	}
    //-----------[ 공인중개사/ 부동산관련정보 수정페이지 부르기 ]--------------------------------------------------------
    @RequestMapping(value = "/real_update_request", method = RequestMethod.GET)
   	public ModelAndView check_update_request(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	System.out.println("요청");
		mav.setViewName("realtor/updateReal");
    	
		return mav;
   	}
    //-----------[ 공인중개사/ 부동산관련정보 수정요청 ]--------------------------------------------------------
    @RequestMapping(value = "/realUpdate", method = RequestMethod.POST)
   	public ModelAndView realUpdate(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	employeeSvc.reqestMod(dto);
		mav.setViewName("realtor/mypage/user");
    	
		return mav;
   	}
    //-----------[ 공인중개사/ 탈퇴 요청페이지 부르기 ]--------------------------------------------------------
    @RequestMapping(value = "/real_delete", method = RequestMethod.POST)
   	public ModelAndView real_delete(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	  
    	Bmember bm = (Bmember) session.getAttribute("bm");
    		if(dto.getPassword().toString().equals(bm.getPassword().toString())){
  				//비밀번호가 일치한다면 
	   			mav.setViewName("realtor/deleteReal");
//	   			mav.addObject("count",dto.getCount());
				}
  			else {
  				//비밀번호가 일치하지 않은 경우
  	   			String result="비밀번호가 일치하지 않습니다.";
  	   			mav.setViewName("realtor/mypage/user");
  	   			mav.addObject("bm1",result);
  			}
    	
		return mav;
   	}
    //-----------[공인중개사/마이페이지 탈퇴 요청]--------------------------------------------------------
    @RequestMapping(value = "/deleteRQ", method = RequestMethod.POST)
    public ModelAndView deleteRQ(@ModelAttribute Bmember dto) {
        
    	ModelAndView mav= new ModelAndView();
   		employeeSvc.saveDelreal(dto);
   		
   		mav.setViewName("realtor/deleteRequest");
   		
		return mav; 
	}
  //-----------[ 공인중개사 /마이페이지 알림]--------------------------------------------------------
    @RequestMapping(value = "/notification", method = RequestMethod.GET)
    public ModelAndView notifications(@ModelAttribute Bmember dto,HttpSession session)
    {
		
		ModelAndView mav= new ModelAndView();
		Bmember bm = (Bmember) session.getAttribute("bm");
		List<Bmember> noteList = employeeSvc.getNote(bm.getEmail());//dao4
		
		mav.setViewName("realtor/mypage/notifications");
		mav.addObject("noteList",noteList);// 회원가입 승인요청 객체
		
		mav.addObject("bm",bm);
        return mav;
    }
  //-----------[ 공인중개사 /마이페이지 알림 뷰 ]--------------------------------------------------------
    @RequestMapping(value = "/real_note_view", method = RequestMethod.GET)
    public ModelAndView real_note_view(@ModelAttribute Bmember dto,HttpSession session)
    {
		ModelAndView mav= new ModelAndView();
		Bmember bm = (Bmember) session.getAttribute("bm");
		List<Bmember> noteList = employeeSvc.getNote(bm.getEmail());
		employeeSvc.setOne(dto);
		String content = employeeSvc.note_content(dto.getId());
		
		mav.setViewName("realtor/mypage/note_view");
		mav.addObject("noteList",noteList);
		mav.addObject("content",content);
        return mav;
    }
    //-----------[ 공인중개사/ 마이페이지 상담내역]--------------------------------------------------------
    @RequestMapping(value = "/real_consulting", method = RequestMethod.GET)
   	public ModelAndView real_consulting(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
   		List<Bmember> consultList = employeeSvc.realConsult(bm.getEmail());//상담목록 전체불러오기
   		
   		List<Bmember> consultList0 = employeeSvc.realConsult0(bm.getEmail());
   		List<Bmember> consultList1 = employeeSvc.realConsult1(bm.getEmail());
   		List<Bmember> consultList2 = employeeSvc.realConsult2(bm.getEmail());
   		List<Bmember> consultList3 = employeeSvc.realConsult3(bm.getEmail());
   		List<Bmember> consultList4 = employeeSvc.realConsult4(bm.getEmail());
   		
   		String[] strArr;
   		String[][] array = new String[consultList.size()][8] ;
   		for(int i=0;i<consultList.size();i++ ) {
   			
   			strArr =service2.getEstateInfoById(consultList.get(i).getId());
   			array[i][0] = String.valueOf(consultList.get(i).getId());//매물id
   			array[i][1] = strArr[1];//부동산이름
   			array[i][2] = strArr[2];//일반
   			array[i][3] = strArr[3];//월세
   			array[i][4] = strArr[4];//얼마
   			array[i][5] = strArr[5];//면적
   			array[i][6] = strArr[6];//층
   			array[i][7] = strArr[8];//주소
   			
   		}
   		double sum =0;
   		for(int i=0;i<consultList3.size();i++) {
   			
   			sum+=consultList3.get(i).getEvaluation();
   		}
   		double result= Math.round((sum/consultList3.size())*10)/10.0;
   		
   		mav.setViewName("realtor/mypage/consulting");
		mav.addObject("bm",bm);//객체
		mav.addObject("consultList",consultList);//전체상담
		mav.addObject("consultList0",consultList0);//상태가 0/신청된
		mav.addObject("consultList1",consultList1);//상태가1/접수된
		mav.addObject("consultList2",consultList2);//상태가2/완료된
		mav.addObject("consultList3",consultList3);//상태가3/평가된
		mav.addObject("consultList4",consultList4);//상태가4/매칭된
		
		mav.addObject("status0",consultList0.size());
		mav.addObject("status1",consultList1.size());
		mav.addObject("status2",consultList2.size());
		mav.addObject("status3",consultList3.size());
		mav.addObject("status4",consultList4.size());
		
		mav.addObject("result",result);
		
		mav.addObject("array",array);
		return mav;
   	}   
  //-----------[ 공인중개사/마이페이지 상담목록 ]--------------------------------------------------------
    @RequestMapping(value = "/real_consulting2", method = RequestMethod.POST)
   	public ModelAndView real_consulting2(@ModelAttribute Bmember dto,HttpSession session) {

    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
   		List<Bmember> consultList = employeeSvc.realConsult(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.realConsult0(bm.getEmail());//상태 0 인 상담리스트
   		List<Bmember> consultList1 = employeeSvc.realConsult1(bm.getEmail());//상태 1 인 상담리스트
   		List<Bmember> consultList2 = employeeSvc.realConsult2(bm.getEmail());//상태 2 인 상담리스트
   		List<Bmember> consultList3 = employeeSvc.realConsult3(bm.getEmail());//상태 3 인 상담리스트
   		List<Bmember> consultList4 = employeeSvc.realConsult4(bm.getEmail());//상태 4 인 상담리스트
   			
   		double sum =0;
   		for(int i=0;i<consultList3.size();i++) {
   			
   			sum+=consultList3.get(i).getEvaluation();
   		}
   		double result= Math.round((sum/consultList3.size())*10)/10.0;
   		System.out.println(result);
   		
   		mav.setViewName("realtor/mypage/consulting2");
   		
   		mav.addObject("consultList",consultList);//전체상담
		mav.addObject("consultList0",consultList0);//상태가 0/신청된
		mav.addObject("consultList1",consultList1);//상태가1/접수된
		mav.addObject("consultList2",consultList2);//상태가2/완료된
		mav.addObject("consultList3",consultList3);//상태가3/평가된
		mav.addObject("consultList4",consultList4);//상태가4/매칭된
		
		mav.addObject("tt",dto.getConsultStatus());//상담 상태
		
		mav.addObject("status0",consultList0.size());//신청자 수
		mav.addObject("status1",consultList1.size());//내가 접수한 상담 수
		mav.addObject("status2",consultList2.size());//상담완료해준 수
		mav.addObject("status3",consultList3.size());//평가받은 수
		mav.addObject("status4",consultList4.size());//매칭완료한 수
		
		mav.addObject("result",result);//상태가4/매칭된
		
		return mav;
   	} 
    //-----------[ 공인중개사/ 상담목록_set1]--------------------------------------------------------
    @RequestMapping(value = "/set1", method = RequestMethod.POST) 
   	public ModelAndView set1(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
    	
    	employeeSvc.set1(dto);//0을 1로 업데이트
    	
    	List<Bmember> consultList = employeeSvc.realConsult(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.realConsult0(bm.getEmail());//상태 0 인 상담리스트
   		List<Bmember> consultList1 = employeeSvc.realConsult1(bm.getEmail());//상태 1 인 상담리스트
   		List<Bmember> consultList2 = employeeSvc.realConsult2(bm.getEmail());//상태 2 인 상담리스트
   		List<Bmember> consultList3 = employeeSvc.realConsult3(bm.getEmail());//상태 3 인 상담리스트
   		List<Bmember> consultList4 = employeeSvc.realConsult4(bm.getEmail());//상태 4 인 상담리스트
    	
   		mav.setViewName("realtor/mypage/consulting2");
   		
		mav.addObject("consultList",consultList);
		mav.addObject("consultList0",consultList0);
		
		mav.addObject("tt","type00");
		
		mav.addObject("status0",consultList0.size());//신청자 수
		mav.addObject("status1",consultList1.size());//내가 접수한 상담 수
		mav.addObject("status2",consultList2.size());//상담완료해준 수
		mav.addObject("status3",consultList3.size());//평가받은 수
		mav.addObject("status4",consultList4.size());//매칭완료한 수
		
		return mav;
   	}  
    //-----------[ 공인중개사/ 상담목록_set2]--------------------------------------------------------
    @RequestMapping(value = "/set2", method = RequestMethod.POST) 
   	public ModelAndView set2(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
    	
    	employeeSvc.set2(dto);//0을 1로 업데이트
    	
    	List<Bmember> consultList = employeeSvc.realConsult(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.realConsult0(bm.getEmail());//상태 0 인 상담리스트
   		List<Bmember> consultList1 = employeeSvc.realConsult1(bm.getEmail());//상태 1 인 상담리스트
   		List<Bmember> consultList2 = employeeSvc.realConsult2(bm.getEmail());//상태 2 인 상담리스트
   		List<Bmember> consultList3 = employeeSvc.realConsult3(bm.getEmail());//상태 3 인 상담리스트
   		List<Bmember> consultList4 = employeeSvc.realConsult4(bm.getEmail());//상태 4 인 상담리스트
    	
   		mav.setViewName("realtor/mypage/consulting2");
   		
		mav.addObject("consultList",consultList);
		mav.addObject("consultList1",consultList1);
		
		mav.addObject("tt","type01");
		
		mav.addObject("status0",consultList0.size());//신청자 수
		mav.addObject("status1",consultList1.size());//내가 접수한 상담 수
		mav.addObject("status2",consultList2.size());//상담완료해준 수
		mav.addObject("status3",consultList3.size());//평가받은 수
		mav.addObject("status4",consultList4.size());//매칭완료한 수
		
		return mav;
   	}  
    //-----------[ 공인중개사/ 마이페이지_매물관리]--------------------------------------------------------
    @RequestMapping(value = "/building", method = RequestMethod.GET)
   	public ModelAndView building(@ModelAttribute Bmember dto,HttpSession session) {

    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
    	
    	List<Tbl_area> ta=service2.myBuilding(bm.getEmail());
   		
		mav.setViewName("realtor/mypage/building");
		mav.addObject("ta",ta);
		
		return mav;
   	}   
    //-----------[ 공인중개사/ 마이페이지_알림]--------------------------------------------------------
    @RequestMapping(value = "/real_note", method = RequestMethod.GET)
   	public ModelAndView real_note(@ModelAttribute Bmember dto) {
   		
    	ModelAndView mav= new ModelAndView();
    	
		mav.setViewName("realtor/mypage/notifications");
   		
		return mav;
   	}   
//-----------------------------------------------------------------------------------------------------------------------------------------------------
//  				일반회원
//-----------------------------------------------------------------------------------------------------------------------------------------------------
    //-----------[ 일반회원/ 로그인 확인 ]--------------------------------------------------------
    @RequestMapping(value = "/getpwname", method = RequestMethod.POST)
   	public ModelAndView getpwname(@ModelAttribute Bmember dto, HttpSession session) {
   
    	ModelAndView mav= new ModelAndView();
    	
    	String email=dto.getEmail();
		String password=dto.getPassword();
		
		System.out.println(email);
		Bmember bm=employeeSvc.getPwName(email);
		if(bm==null)
		{
			System.out.println("bm is null");			
		}
		
    	PageMaker pm = new PageMaker();
    	pm.setPageid(0);
		pm.setTotal(5);
		List<NoticeBoard> getMainNoticeBoardList = noticeBoardSvc.getList(pm);
   		
   		int page_id = 1;
   		session.setAttribute("page_id", page_id);

   		int nBlockStart = 1;
		int nBlockEnd = 10;
    	int allCount = noticeBoardSvc.getAllCount();
		int total = 10;
		int maxPageNum=0;
		if(allCount%total!=0)
		{
			maxPageNum=allCount/total+1;
		}
		session.setAttribute("maxPageNum", maxPageNum);
		for(int i=11; i<=page_id; i+=10)
		{
			if(page_id / i == 1.0) {
				nBlockStart = i;
				nBlockEnd = nBlockStart + 9;
				if(nBlockEnd > maxPageNum) {
					nBlockEnd = maxPageNum;
				}
			}
		}
		session.setAttribute("nBlockStart", nBlockStart);
		session.setAttribute("nBlockEnd", nBlockEnd);
		
		if(page_id == 1) {
			// do nothing!
		} else {
			page_id= (page_id-1)*total+1;
		}
		
		PageMaker pm2 = new PageMaker();
		pm2.setPageid(page_id-1);
    	pm2.setTotal(total);
		List<NoticeBoard> list = noticeBoardSvc.getList(pm2);
		session.setAttribute("list", list);
   		 
   		try {//아이디기 존재 할 경우
   			
   			
   			if(bm.getCheckEmail()==null) {//이메일 인증 안한 상태
   				System.out.println("null이라면: "+bm.getCheckEmail());
   	   			String result="이메일 인증을 해주세요";
   	   			mav.setViewName("warning");
   	   			mav.addObject("bm",result);
   	   			
   	   			 
   	   		}
   	   		else {//이메일 인증 한 상태
   	   	
   	   				if(dto.getPassword().toString().equals(bm.getPassword().toString())){
   	   	   				//비밀번호가 일치한다면 -> 환영합니다 /일반회원/ 님
   	   					session.setAttribute("bm",bm);
   	   	   	   			mav.setViewName("/main"); 
   	   	   	   			session.setAttribute("getMainNoticeBoardList",getMainNoticeBoardList);
   	   	   	   		}
   	   	   	   		else {
   	   	   	   			//비밀번호가 틀렸을 경우
   	   	   	   			String result="비밀번호가 일치하지 않습니다.";

   	   	   	   			mav.setViewName("login/login");
   	   	   	   			mav.addObject("result",result);
   	   	   	   		}
   	   		}
   		}
   		catch(Exception e){//아이디가 없을 경우 exception 발생
   			e.printStackTrace();
   			
   			String result="아이디가 존재하지 않습니다.";

   			mav.setViewName("login/login");
   			mav.addObject("result",result);
   		}
   		
		return mav;
   	}
    //-----------[ 일반회원/ 마이페이지 프로필  ]--------------------------------------------------------
    @RequestMapping(value = "/user", method = RequestMethod.GET)
   	public ModelAndView user(@ModelAttribute Bmember dto,HttpSession session) {

    	ModelAndView mav= new ModelAndView();
    	
		mav.setViewName("user/mypage/user");
//		mav.addObject("count",dto.getCount());
		return mav;
   	}
    //-----------[ 일반/마이페이지 프로필수정CSS ]--------------------------------------------------------
    @RequestMapping(value = "/user_mod", method = RequestMethod.POST)
   	public ModelAndView user_mod(@ModelAttribute Bmember dto,HttpSession session) {
   		
    	ModelAndView mav= new ModelAndView();
    	
    	employeeSvc.update(dto);
    	
    	session.setAttribute("bm",null);
    	Bmember bm=employeeSvc.getPwName(dto.getEmail());
    	session.setAttribute("bm",bm);
    	 
		mav.setViewName("user/mypage/user");
   		
		return mav;
   	}
    //-----------[일반회원/마이페이지 탈퇴 페이지 ]--------------------------------------------------------
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(@ModelAttribute Bmember dto,HttpSession session) {
        
    	ModelAndView mav= new ModelAndView();
   		
   		mav.setViewName("user/delete");
   		
		return mav;
	}
    //-----------[일반회원/마이페이지 탈퇴 페이지 ]--------------------------------------------------------
    @RequestMapping(value = "/delete_process", method = RequestMethod.POST)
    public ModelAndView delete_process(@ModelAttribute Bmember dto,HttpSession session) {
        
    	ModelAndView mav= new ModelAndView();
    	System.out.println("delete-email:"+dto.getEmail());
   		employeeSvc.saveEmployee(dto);
   		employeeSvc.delete_process(dto);
   		session.setAttribute("bm",null);
   		mav.setViewName("user/delete_member");
   		 
		return mav;
	}
    //-----------[ 일반회원/마이페이지 상담목록 ]--------------------------------------------------------
    @RequestMapping(value = "/consulting", method = RequestMethod.GET)
   	public ModelAndView consulting(@ModelAttribute Bmember dto,HttpSession session) {

    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
   		List<Bmember> consultList = employeeSvc.consultList(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.consultList0(bm.getEmail());//상담상태0 전체불러오기
   		List<Bmember> consultList1 = employeeSvc.consultList1(bm.getEmail());//상담상태1 전체불러오기
   		List<Bmember> consultList2 = employeeSvc.consultList2(bm.getEmail());//상담상태2 전체불러오기
   		List<Bmember> consultList3 = employeeSvc.consultList3(bm.getEmail());//상담상태3 전체불러오기
   		List<Bmember> consultList4 = employeeSvc.consultList4(bm.getEmail());//상담상태4 전체불러오기
   		
   		String[] strArr;
   		String[][] array = new String[consultList.size()][8] ;
   		for(int i=0;i<consultList.size();i++ ) {
   			
   			strArr =service2.getEstateInfoById(consultList.get(i).getId());
   			array[i][0] = String.valueOf(consultList.get(i).getId());//매물id
   			array[i][1] = strArr[1];//부동산이름
   			array[i][2] = strArr[2];//일반
   			array[i][3] = strArr[3];//월세
   			array[i][4] = strArr[4];//얼마
   			array[i][5] = strArr[5];//면적
   			array[i][6] = strArr[6];//층
   			array[i][7] = strArr[8];//주소
   			
   		}
   		
		mav.setViewName("user/mypage/consulting");
		mav.addObject("bm",bm);//객체
//		mav.addObject("count",dto.getCount());//알림 카운트
		
		mav.addObject("consultList",consultList);// 전체회원
		mav.addObject("status0",consultList0.size());// 신청한상담 수
		mav.addObject("status1",consultList1.size());// 접수된상담 수
		mav.addObject("status2",consultList2.size());// 완료한상담 수
		mav.addObject("status3",consultList3.size());// 평가한상담 수 
		mav.addObject("status4",consultList4.size());// 매칭한 매물
		
		mav.addObject("array",array);// 매물
		return mav;
    } 
    //-----------[ 일반회원/마이페이지 상담목록 ]--------------------------------------------------------
    @RequestMapping(value = "/consulting2", method = RequestMethod.POST)
   	public ModelAndView consulting2(@ModelAttribute Bmember dto,HttpSession session) {

    	ModelAndView mav= new ModelAndView();
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
    	
   		List<Bmember> consultList = employeeSvc.consultList(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.consultList0(bm.getEmail());//상담상태0 전체불러오기
   		List<Bmember> consultList1 = employeeSvc.consultList1(bm.getEmail());//상담상태1 전체불러오기
   		List<Bmember> consultList2 = employeeSvc.consultList2(bm.getEmail());//상담상태2 전체불러오기
   		List<Bmember> consultList3 = employeeSvc.consultList3(bm.getEmail());//상담상태3 전체불러오기
   		List<Bmember> consultList4 = employeeSvc.consultList4(bm.getEmail());//상담상태4 전체불러오기
   		
   		String[] strArr;
   		String[][] array = new String[consultList.size()][8] ;
   		for(int i=0;i<consultList.size();i++ ) {
   			
   			strArr =service2.getEstateInfoById(consultList.get(i).getId());
   			array[i][0] = String.valueOf(consultList.get(i).getId());//매물id
   			array[i][1] = strArr[1];//부동산이름
   			array[i][2] = strArr[2];//일반
   			array[i][3] = strArr[3];//월세
   			array[i][4] = strArr[4];//얼마
   			array[i][5] = strArr[5];//면적
   			array[i][6] = strArr[6];//층
   			array[i][7] = strArr[8];//주소
   		}
   		
		mav.setViewName("user/mypage/consulting2");
		mav.addObject("tt",dto.getConsultStatus());//객체
//		mav.addObject("count",dto.getCount());//알림 카운트
		
		mav.addObject("consultList",consultList);// 전체회원
		
		mav.addObject("consultList0",consultList0);//상태가 0/신청된
		mav.addObject("consultList1",consultList1);//상태가1/접수된
		mav.addObject("consultList2",consultList2);//상태가2/완료된
		mav.addObject("consultList3",consultList3);//상태가3/평가된
		mav.addObject("consultList4",consultList4);//상태가4/매칭된
		
		mav.addObject("status0",consultList0.size());// 신청한상담 수
		mav.addObject("status1",consultList1.size());// 접수된상담 수
		mav.addObject("status2",consultList2.size());// 완료한상담 수
		mav.addObject("status3",consultList3.size());// 평가한상담 수 
		mav.addObject("status4",consultList4.size());// 매칭한 매물
		
		mav.addObject("array",array);// 매물 
		 
		return mav;
   	} 
    //-----------[ 일반회원/마이페이지 찜목록 ]--------------------------------------------------------
    @RequestMapping(value = "/set3", method = RequestMethod.POST) 
   	public ModelAndView set3(@ModelAttribute Bmember dto,HttpSession session) {
    	
    	ModelAndView mav= new ModelAndView();
    	employeeSvc.set3(dto); 
    	
    	Bmember bm = (Bmember) session.getAttribute("bm");
    	
   		List<Bmember> consultList = employeeSvc.consultList(bm.getEmail());//상담목록 전체불러오기
   		List<Bmember> consultList0 = employeeSvc.consultList0(bm.getEmail());//상담상태0 전체불러오기
   		List<Bmember> consultList1 = employeeSvc.consultList1(bm.getEmail());//상담상태1 전체불러오기
   		List<Bmember> consultList2 = employeeSvc.consultList2(bm.getEmail());//상담상태2 전체불러오기
   		List<Bmember> consultList3 = employeeSvc.consultList3(bm.getEmail());//상담상태3 전체불러오기
   		List<Bmember> consultList4 = employeeSvc.consultList4(bm.getEmail());//상담상태4 전체불러오기
   		
   		String[] strArr;
   		String[][] array = new String[consultList.size()][8] ;
   		for(int i=0;i<consultList.size();i++ ) {
   			
   			strArr =service2.getEstateInfoById(consultList.get(i).getId());
   			array[i][0] = String.valueOf(consultList.get(i).getId());//매물id
   			array[i][1] = strArr[1];//부동산이름
   			array[i][2] = strArr[2];//일반
   			array[i][3] = strArr[3];//월세
   			array[i][4] = strArr[4];//얼마
   			array[i][5] = strArr[5];//면적
   			array[i][6] = strArr[6];//층
   			array[i][7] = strArr[8];//주소
   		}
   		
		mav.setViewName("user/mypage/consulting2");
		mav.addObject("tt","type02");//객체
		
		mav.addObject("consultList",consultList);// 전체회원
		
		mav.addObject("consultList0",consultList0);//상태가 0/신청된
		mav.addObject("consultList1",consultList1);//상태가1/접수된
		mav.addObject("consultList2",consultList2);//상태가2/완료된
		mav.addObject("consultList3",consultList3);//상태가3/평가된
		mav.addObject("consultList4",consultList4);//상태가4/매칭된
		
		mav.addObject("status0",consultList0.size());// 신청한상담 수
		mav.addObject("status1",consultList1.size());// 접수된상담 수
		mav.addObject("status2",consultList2.size());// 완료한상담 수
		mav.addObject("status3",consultList3.size());// 평가한상담 수 
		mav.addObject("status4",consultList4.size());// 매칭한 매물
		
		mav.addObject("array",array);// 매물 
    	
		return mav; 
   	}
    //-----------[ 일반회원/마이페이지 알림]--------------------------------------------------------
    @RequestMapping(value = "/notifications", method = RequestMethod.GET)
    public ModelAndView notification(@ModelAttribute Bmember dto,HttpSession session)
    {
		
		ModelAndView mav= new ModelAndView();
		Bmember bm = (Bmember) session.getAttribute("bm");
		List<Bmember> noteList = employeeSvc.getNote(bm.getEmail());//dao4
		
		mav.setViewName("user/mypage/notifications");
		mav.addObject("noteList",noteList);// 회원가입 승인요청 객체
		
		mav.addObject("bm",bm);
        return mav;
    }
    //-----------[ 일반회원/마이페이지 알림 뷰 ]--------------------------------------------------------
    @RequestMapping(value = "/note_view", method = RequestMethod.GET)
    public ModelAndView note_view(@ModelAttribute Bmember dto)
    {
		ModelAndView mav= new ModelAndView();
		System.out.println(dto.getId());
		employeeSvc.setOne(dto);
		String content = employeeSvc.note_content(dto.getId());
		
		mav.setViewName("user/mypage/note_view");
		mav.addObject("content",content);
        return mav;
    }
    //-----------[일반/ 알림검색 ]--------------------------------------------------------
    @RequestMapping(value="/noteSearch")
    @ResponseBody
    public List<Bmember> noteSearch(@RequestParam("keyword") String keyword, HttpSession session) {
        
    	Bmember bm = (Bmember)session.getAttribute("bm"); 
    	bm.setKeyword(keyword);
    	System.out.println("Search email: "+ bm.getEmail());
        System.out.println("Search Keyword: "+bm.getKeyword());
        
        List<Bmember> search = employeeSvc.getNoteByKeyword(bm);
        
        return search; 
    } 
//-----------------------------------------------------------------------------------------------------------------------------------------------------
//						관리자
//-----------------------------------------------------------------------------------------------------------------------------------------------------	
    //-----------[관리자/ 로그인 ]--------------------------------------------------------
    @RequestMapping(value = "/managepage", method = RequestMethod.GET)
   	public String adminLogin()
    {	
   		return "manage/adminLogin";
   	}
    //-----------[관리자/ 로그인 확인]--------------------------------------------------------
    @RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
   	public ModelAndView adminLoginCheck(@ModelAttribute Bmember dto)
    {	
    	ModelAndView mav= new ModelAndView();
    	Bmember bm=employeeSvc.adminCheck(dto.getEmail());
    	
    	try {//아이디기 존재 할 경우
   			
   			if(dto.getPassword().toString().equals(bm.getPassword().toString())){
   	   	   				//비밀번호가 일치한다면 
		   				List<Bmember> user = employeeSvc.allUser();//dao
		   				List<Bmember> realtor= employeeSvc.allRealtor();//dao1
		   				
		   				List<Bmember> new_user = employeeSvc.new_user();//dao
		   				List<Bmember> new_real = employeeSvc.new_real();//dao1
		   				
		   				List<Bmember> insertRequest = employeeSvc.insertRequest();//dao1
		   				
		   				List<Bmember> delete_member = employeeSvc.deleteMember();//dao3
		   				List<Bmember> delete_Req = employeeSvc.delete_Req();//dao3
		   				
		   				List<Bmember> update_req = employeeSvc.update_req();//dao7 정보수정
		   				
		   				int insertReq= insertRequest.size();
		   				
		   				mav.addObject("all",user.size()+realtor.size());// 전체회원
		   				mav.addObject("newbie",new_user.size()+new_real.size());// 신규회원
		   				mav.addObject("insertReq",insertReq);// 가입대기
		   				mav.addObject("update_req",update_req.size());// 정보수정 요청수 
		   				mav.addObject("deleted",delete_member.size());// 탈퇴한 회원
		   				mav.addObject("delete_Req",delete_Req.size());// 탈퇴요청 회원수
		   				mav.addObject("delete_ReqList",delete_Req);// 탈퇴요청 객체
		   				mav.addObject("insertRequest",insertRequest);// 회원가입 승인요청 객체
		   				
		   				mav.addObject("update_reqList",update_req);// 정보수정 요청리스트
   				
   	   	   	   			mav.setViewName("manage/membership");//index
   	   	   	   			mav.addObject("bm",bm);
   	   	   	   			
   	   	   	   		}
   	   	   	   		else {
   	   	   	   			//비밀번호가 틀렸을 경우
   	   	   	   			String result="비밀번호가 일치하지 않습니다.";
   	   	   	   			bm =null;
   	   	   	   			mav.setViewName("manage/adminLogin");
   	   	   	   			mav.addObject("bm2",result);
   	   	   	   			mav.addObject("bm",bm);
   	   	   	   		}
   	   		
   		}
   		catch(Exception e){//아이디가 없을 경우 exception 발생
   			e.printStackTrace();
   			
   			String result="아이디가 존재하지 않습니다.";
   			bm =null;
   			mav.addObject("bm",bm);
   			mav.setViewName("manage/adminLogin");
   			mav.addObject("bm2",result);
   		}
		return mav;
   	}
    //-----------[관리자/ 3.회원관리 페이지 ]--------------------------------------------------------
    @RequestMapping(value = "/membership", method = RequestMethod.GET)
    public ModelAndView manage_home3_1(Model model)
    {
		
		ModelAndView mav= new ModelAndView();
		
		//둘이 합친게 모든 유저 
		List<Bmember> user = employeeSvc.allUser();//dao
		List<Bmember> realtor= employeeSvc.allRealtor();//dao1
		
		List<Bmember> new_user = employeeSvc.new_user();//dao
		List<Bmember> new_real = employeeSvc.new_real();//dao1
		
		List<Bmember> insertRequest = employeeSvc.insertRequest();//dao1
		
		List<Bmember> delete_member = employeeSvc.deleteMember();//dao3
		List<Bmember> delete_Req = employeeSvc.delete_Req();//dao3
		
		List<Bmember> update_req = employeeSvc.update_req();//dao7 정보수정
		
		int insertReq= insertRequest.size();
		
		mav.setViewName("manage/membership");
		
		mav.addObject("all",user.size()+realtor.size());// 전체회원
		mav.addObject("newbie",new_user.size()+new_real.size());// 신규회원
		mav.addObject("insertReq",insertReq);// 가입대기
		mav.addObject("update_req",update_req.size());// 정보수정 요청수 
		mav.addObject("deleted",delete_member.size());// 탈퇴한 회원
		mav.addObject("delete_Req",delete_Req.size());// 탈퇴요청 회원수
		mav.addObject("delete_ReqList",delete_Req);// 탈퇴요청 객체
		mav.addObject("insertRequest",insertRequest);// 회원가입 승인요청 객체
		
		mav.addObject("update_reqList",update_req);// 정보수정 요청리스트
		
        return mav;
    }
    //-----------[관리자/ 3.가입승인 ]--------------------------------------------------------
    @RequestMapping(value = "/request", method = RequestMethod.GET)
   	public ModelAndView requests(@ModelAttribute Bmember dto) {
    	
    	ModelAndView mav= new ModelAndView();
    	
   		employeeSvc.request(dto.getEmail());
   		
   		String test="승인했습니다.";
		mav.setViewName("warning");
		mav.addObject("bm",test);
   		 
		return mav;
   	}
    //-----------[관리자/ 4.공인중개사관리 페이지 ]--------------------------------------------------------
    @RequestMapping(value = "/consultMange", method = RequestMethod.GET)
   	public ModelAndView marketting(@ModelAttribute Bmember dto)
    {	
    	ModelAndView mav= new ModelAndView();
    	
    	List<Bmember> selectTop10 = employeeSvc.selectTop10();
   		
		mav.setViewName("manage/consultMange");
		mav.addObject("selectTop10",selectTop10);
		
		return mav;
   	}
    //-----------[관리자/ 5.커뮤니티 페이지 ]--------------------------------------------------------
    @RequestMapping(value = "/community", method = RequestMethod.GET)
   	public String community()
    {	
   		return "manage/community";
   	}
    
}
