package com.spring.service;

import java.util.Random;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.spring.dao.JoinDAO;


@Service
public class UserMailSendService {
	
	@Autowired
	public JavaMailSender mailSender;
	@Autowired
	public SqlSessionTemplate sqlSession;
	
	public JoinDAO dao;
	
	public boolean lowerCheck;
	public int size;
	
	public String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;
		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			}
			else {
				continue;
				}
		}
		while (sb.length() < size);
		
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}
	
	public void mailSendWithUserKey(String email, String name, HttpServletRequest request) {
		System.out.println("------------------------------> UserMailService - name: "+ name); ///////////println
		String checkEmail = getKey(false, 20);
		System.out.println("------------------------------> UserMailService - checkEmail: "+checkEmail);///////////println
		dao = sqlSession.getMapper(JoinDAO.class);
		dao.getKey(email, checkEmail); 
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요!</h2><br><br>" 
					+ "<h3>" + name + "님</h3>" + "<p>회원가입을 진심으로 축하드립니다. 메일 인증 버튼을 클릭해주세요! : " 
					+ "<a href='http://localhost:8089" + request.getContextPath()
					+ "/key_alter?email="+ email +"&checkEmail="+checkEmail+"'>클릭!</a></p>";
			try {
				mail.setSubject("[이메일 인증] Here You Are 이메일 인증을 해주세요!", "UTF-8");
				mail.setText(htmlStr, "UTF-8", "HTML");
				mail.addRecipient(RecipientType.TO, new InternetAddress(email));
				mailSender.send(mail);
			}
			catch (MessagingException e) {
				e.printStackTrace();
			}	
		}
	
	public int alterService(String email, String checkEmail) {
		int resultCnt = 0;
		dao = sqlSession.getMapper(JoinDAO.class);
		resultCnt = dao.alterKey(email, checkEmail);
		return resultCnt;
	}
	
	
	
	
	
	
	
	
	
	
	public String getKey_Realtor(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	public void mailSendWithUserKey_Realtor(String email, String name, HttpServletRequest request) {
		System.out.println("------------------------------> UserMailService - name: "+ name);///////////println
		String checkEmail = getKey_Realtor(false, 20);
		System.out.println("------------------------------> UserMailService - checkEmail: "+checkEmail);///////////println
		dao = sqlSession.getMapper(JoinDAO.class);
		dao.getKey_Realtor(email, checkEmail); 
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요!</h2><br><br>" 
					+ "<h3>" + name + "님</h3>" + "<p>회원가입을 진심으로 축하드립니다. 메일 인증 버튼을 클릭해주세요! : " 
					+ "<a href='http://localhost:8089" + request.getContextPath()
					+ "/key_alter_Realtor?email="+ email +"&checkEmail="+checkEmail+"'>클릭!</a></p>";
			try {
				mail.setSubject("[이메일 인증] Here You Are 이메일 인증을 해주세요!", "UTF-8");
				mail.setText(htmlStr, "UTF-8", "HTML");
				mail.addRecipient(RecipientType.TO, new InternetAddress(email));
				mailSender.send(mail);
			}
			catch (MessagingException e) {
				e.printStackTrace();
			}	
		}
	
	public int alterService_Realtor(String email, String checkEmail) {
		int resultCnt_Realtor = 0;
		dao = sqlSession.getMapper(JoinDAO.class);
		resultCnt_Realtor = dao.alterKey_Realtor(email, checkEmail);
		return resultCnt_Realtor;
	}
}
