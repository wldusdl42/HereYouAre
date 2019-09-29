package com.spring.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.NoticeBoard;
import com.spring.dto.PageMaker;
import com.spring.dto.PageMaker2;
import com.spring.service.NoticeBoardService;

@Controller
public class NoticeBoardController {
   
   @Autowired
    private NoticeBoardService noticeBoardSvc;
   
   @RequestMapping(value = "/noticeBoardAdd",method=RequestMethod.GET)
    public String noticeBoardAdd(NoticeBoard noticeBoard, HttpServletRequest request, String editor)
    {
	   String content = editor;
	   noticeBoard.setContents(content);
       System.out.println("noticeBoardAdd");
       noticeBoardSvc.saveNoticeBoard(noticeBoard);
       return "redirect:/1";
    }
   
   @RequestMapping(value = "/listNoticeBoard",method=RequestMethod.GET)
    public String listNoticeBoard()
    {
       System.out.println("listNoticeBoard");
       return "redirect:/1";
    }
   
   @RequestMapping(value= "/{page_id}", method= RequestMethod.GET) 
   public ModelAndView listNoticeBoard(@PathVariable int page_id, Model model) {
      model.addAttribute("page_id", page_id);
      System.out.println("page_id:"+page_id);
      
      int nBlockStart = 1;
      int nBlockEnd = 10;
      int allCount = noticeBoardSvc.getAllCount();
      int total = 10;
      int maxPageNum=0;
      if(allCount%total!=0)
      {
         maxPageNum=allCount/total+1;
      }
      if(allCount>100)
      {
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
      }
      else
      {
    	  if(allCount % total == 0)
    	  {
    		  nBlockEnd = (allCount/total);
    		  maxPageNum = nBlockEnd;
    	  }
    	  else
    	  {
    	         nBlockStart = 1;
    	         System.out.println("nBlockStart:"+nBlockStart);
    	         nBlockEnd = (allCount/total)+1;
    	         System.out.println("nBlockEnd:"+nBlockEnd);
    	  }

      }
      model.addAttribute("nBlockStart", nBlockStart);
      model.addAttribute("nBlockEnd", nBlockEnd);
      model.addAttribute("maxPageNum", maxPageNum);
      if(page_id == 1) {
         // do nothing!
      } else {
         page_id= (page_id-1)*total+1;
      }
      
      PageMaker pm = new PageMaker();
      System.out.println("setPageid:"+(page_id-1));
      System.out.println("setTotal:"+total);
      pm.setPageid(page_id-1);
       pm.setTotal(total);
      List<NoticeBoard> list = noticeBoardSvc.getList(pm);
      
      return new ModelAndView("NoticeBoard/listNoticeBoard", "list", list);   
   }
   
   @RequestMapping(value = "/getNoticeBoardContents",method=RequestMethod.GET)
    public String getNoticeBoardContents(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException
    {
      String bId = request.getParameter("bId");
      int id = Integer.parseInt(bId);
      NoticeBoard noticeBoard = noticeBoardSvc.getNoticeBoardById(id);
      System.out.println("noticeBoard : "+noticeBoard);
      model.addAttribute("noticeBoard", noticeBoard);
      return "NoticeBoard/getNoticeBoardContents";
    }
	
   @RequestMapping(value= "/search/{page_id}", method= RequestMethod.GET) 
   public ModelAndView listNoticeBoardSearch(@PathVariable int page_id, HttpServletRequest request, HttpServletResponse response, Model model) {
      String keyword = request.getParameter("keyword");
      
      if(page_id == 1)
      {
         System.out.println("keyword:"+keyword);
         model.addAttribute("keyword_remain", keyword);
      }
      else
      {
         String keyword_remain = request.getParameter("keyword_remain");
         model.addAttribute("keyword_remain", keyword_remain);
         System.out.println("keyword_remain:"+keyword_remain);
      }
      model.addAttribute("keyword_remain", keyword);
      System.out.println("search");
      
      model.addAttribute("page_id", page_id);
      System.out.println("page_id:"+page_id);
      
      int nBlockStart = 1;
      int nBlockEnd = 10;
       int allCount = noticeBoardSvc.getAllCountSearch(keyword);
       
      int total = 10;
      int maxPageNum=0;
      if(allCount%total!=0)
      {
         maxPageNum=allCount/total+1;
      }

      

      if(allCount>100)
      {
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
      }
      else
      {
    	  if(allCount % total == 0)
    	  {
    		  nBlockEnd = (allCount/total);
    		  maxPageNum = nBlockEnd;
    	  }
    	  else
    	  {
    	         nBlockStart = 1;
    	         System.out.println("nBlockStart:"+nBlockStart);
    	         nBlockEnd = (allCount/total)+1;
    	         System.out.println("nBlockEnd:"+nBlockEnd);
    	  }

      }
      model.addAttribute("nBlockStart", nBlockStart);
      model.addAttribute("nBlockEnd", nBlockEnd);
      model.addAttribute("maxPageNum", maxPageNum);
      if(page_id == 1) {
         // do nothing!
      } else {
         page_id= (page_id-1)*total+1;
      }
      
      PageMaker2 pm2 = new PageMaker2();
      System.out.println("setPageid:"+(page_id-1));
      System.out.println("setTotal:"+total);
      pm2.setPageid(page_id-1);
       pm2.setTotal(total);
       pm2.setKeyword(keyword);
       List<NoticeBoard> list = noticeBoardSvc.getNoticeSearch(pm2);
      
      return new ModelAndView("NoticeBoard/listNoticeBoardSearch", "list", list);
   }
}
