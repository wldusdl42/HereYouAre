package com.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping(value = "/upload")
public class ImageUploadController {

    private static final Logger logger = LoggerFactory.getLogger(ImageUploadController.class);
    
    @RequestMapping(value="/imageUpload") 
    public void imageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload)
            throws Exception {
 
        response.setCharacterEncoding("utf-8");
 
        response.setContentType("text/html; charset=utf-8");
 
        String fileName = upload.getOriginalFilename();
        System.out.println("fileName:"+fileName);
 
        byte[] bytes = upload.getBytes();
        System.out.println("bytes:"+bytes);
        String realPath = request.getSession().getServletContext().getRealPath("");
        String finalPath = "\\WEB-INF\\views\\images\\";
//        String upPath = "..\\upImages\\";
        String uploadPath =  realPath+finalPath;
        
        String saveFileName = genSaveFileName(fileName);
        System.out.println("saveFileName:"+saveFileName);
        
//        OutputStream out = new FileOutputStream(new File(uploadPath + fileName));
// 
//        out.write(bytes);
//        out.flush();
      if (!upload.getOriginalFilename().isEmpty()) {
		   BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	            		   new File(uploadPath,saveFileName)));
        outputStream.write(bytes);
        outputStream.flush();
        outputStream.close();
        System.out.println("outputStream:"+outputStream);
		}
        
        System.out.println("uploadPath:"+uploadPath);
        String callback = request.getParameter("CKEditorFuncNum");
        System.out.println("callback:"+callback);
        
        PrintWriter printWriter = response.getWriter();
        System.out.println("printWriter:"+printWriter);
        String fileUrl = request.getContextPath() + "/images/" + saveFileName;
        System.out.println("request.getContextPath():"+request.getContextPath());
        System.out.println("fileUrl:"+fileUrl);
        
        printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
						+ callback
						+ ",'"
						+ fileUrl
						+"','이미지 업로드에 성공했습니다.'"
						+ ")</script>");
        printWriter.flush();
        
//        JsonObject json = new JsonObject();
//        json.addProperty("uploaded", 1);
//        json.addProperty("fileName", fileName);
//        json.addProperty("url", fileUrl);
//        
//        printWriter.println(json);
    }
    
    private String genSaveFileName(String extName) {
	    String fileName = "";
	    System.out.println("extName:"+extName);
	     
	    Calendar calendar = Calendar.getInstance();
	    fileName += calendar.get(Calendar.YEAR);
	    fileName += calendar.get(Calendar.MONTH);
	    fileName += calendar.get(Calendar.DATE);
	    fileName += calendar.get(Calendar.HOUR);
	    fileName += calendar.get(Calendar.MINUTE);
	    fileName += calendar.get(Calendar.SECOND);
	    fileName += calendar.get(Calendar.MILLISECOND);
	    fileName += "_";
	    fileName += extName;
	    System.out.println("genSaveFileName() : "+fileName); 
	    return fileName;
	  }
}
