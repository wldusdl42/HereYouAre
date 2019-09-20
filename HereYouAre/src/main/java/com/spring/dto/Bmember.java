package com.spring.dto;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Bmember implements Serializable 
{
	private String uri;
	
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}

	//----------일반회원--------------------
	private String name; // 일반,공인,어드민  같은이름의 컬럼사용
    private String email;// 일반,공인,어드민  같은이름의 컬럼사용
    private String password;// 일반,공인,어드민  같은이름의 컬럼사용
    private String phone;//개인연락처
    private String adress;
    private String sex;
    private String age;//생년월일
    private String time;//회원 가입시간
    private int type;//일반 1, 공인중개사 2 , 관리자 0
    private String checkEmail;//이메일 인증 여부
	//----------------공인중개사-----------
    private String realtorNumber;//공인중개사 번호
    private String ownerNumber;//사업자번호
    private String checking;//가입승인여부
	private String agencyName; //부동산 상호명
    private String agencyAddress; //부동산 위치
    private String tel;//부동산 전화번호
    //------------탈퇴 테이블 ----------------
  	private String reason;//탈퇴이유 택1
  	private String reason_write;//탈퇴이유 직접입력
  	private String delete_time;//탈퇴되는 시간
  	private String request;
	//--------------알림 테이블--------------------
	private String sender ;//보낸사람
  	private String recipient;//받은사람
  	private String content;//내용
  	private String view;//본횟수(0인지 1인지 구분하여 알림카운트)
  	private String alerttime;//받은시간
  	private String keyword;//키워드
  	//-----------왜있지?오잉------------------------
  	private int id;
  	//-----------일반회원 알림 카운트----------------
  	private int count;	
  	//-----------상담내역 테이블----------------
  	private int timeId;//타임아이디
	private String phoneNum;//연락처
  	private String consultType;//상담유형[1.방문/2.전화]
  	private String requestTime;//신청시간
  	private String receiptTime;//접수시간
  	private String endTime;//상담종료시간
  	private String consultStatus;//상담상태 [신청:0/접수:1/종료:2]
  	private double evaluation;//평가 ex)별점3.8
  	private String matching;
  	private String evaluation_reason;
	//------------------일반회원 getter/setter----------------------
  	public String getName() {
  		return name;
  	}
  	public void setName(String name) {
  		this.name = name;
  	}
  	public String getEmail() {
  		return email;
  	}
  	public void setEmail(String email) {
  		this.email = email;
  	}
  	public String getPassword() {
  		return password;
  	}
  	public void setPassword(String password) {
  		this.password = password;
  	}
  	public String getPhone() {
  		return phone;
  	}
  	public void setPhone(String phone) {
  		this.phone = phone;
  	}
  	public String getAdress() {
  		return adress;
  	}
  	public void setAdress(String adress) {
  		this.adress = adress;
  	}
  	public String getSex() {
  		return sex;
  	}
  	public void setSex(String sex) {
  		this.sex = sex;
  	}
  	public String getAge() {
  		return age;
  	}
  	public void setAge(String age) {
  		this.age = age;
  	}
  	public String getTime() {
  		return time;
  	}
  	public void setTime(String time) {
  		this.time = time;
  	}
  	public int getType() {
  		return type;
  	}
  	public void setType(int type) {
  		this.type = type;
  	}
  	public String getCheckEmail() {
  		return checkEmail;
  	}
  	public void setCheckEmail(String checkEmail) {
  		this.checkEmail = checkEmail;
  	}
	//-------------공인중개사 getter/setter--------------------
    public String getRealtorNumber() {
		return realtorNumber;
	}
	public void setRealtorNumber(String realtorNumber) {
		this.realtorNumber = realtorNumber;
	}
	public String getOwnerNumber() {
		return ownerNumber;
	}
	public void setOwnerNumber(String ownerNumber) {
		this.ownerNumber = ownerNumber;
	}
	public String getChecking() {
		return checking;
	}
	public void setChecking(String checking) {
		this.checking = checking;
	}
	public String getAgencyName() {
		return agencyName;
	}
	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}
	public String getAgencyAddress() {
		return agencyAddress;
	}
	public void setAgencyAddress(String agencyAddress) {
		this.agencyAddress = agencyAddress;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
   
	 //----------탈퇴회원 getter/setter-------------
	 public String getReason() {
			return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getReason_write() {
		return reason_write;
	}
	public void setReason_write(String reason_write) {
		this.reason_write = reason_write;
	}
	public String getDelete_time() {
		return delete_time;
	}
	public void setDelete_time(String delete_time) {
		this.delete_time = delete_time;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}

	//--------------알림 getter/setter-----------
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public String getAlerttime() {
		return alerttime;
	}
	public void setAlerttime(String alerttime) {
		this.alerttime = alerttime;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	//----------------왜있냐 getter/setter----------------------
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	 //-----------일반회원 알림 카운트 getter/setter----------------
    public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	//------------상담내역 getter/setter----------------
	public int getTimeId() {
		return timeId;
	}
	public void setTimeId(int timeId) {
		this.timeId = timeId;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getConsultType() {
		return consultType;
	}
	public void setConsultType(String consultType) {
		this.consultType = consultType;
	}
	public String getRequestTime() {
		return requestTime;
	}
	public void setRequestTime(String requestTime) {
		this.requestTime = requestTime;
	}
	public String getReceiptTime() {
		return receiptTime;
	}
	public void setReceiptTime(String receiptTime) {
		this.receiptTime = receiptTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getConsultStatus() {
		return consultStatus;
	}
	public void setConsultStatus(String consultStatus) {
		this.consultStatus = consultStatus;
	}
	public double getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(double evaluation) {
		this.evaluation = evaluation;
	}
	public String getMatching() {
		return matching;
	}
	public void setMatching(String matching) {
		this.matching = matching;
	}
	public String getEvaluation_reason() {
		return evaluation_reason;
	}
	public void setEvaluation_reason(String evaluation_reason) {
		this.evaluation_reason = evaluation_reason;
	}
	//----------------------------------------
		public Bmember()
	    {
	        super();
	    }
	   
		public Bmember(String keyword, String uri, String name, String email, String password,String phone,String adress,String sex,String age,String time,int type,String realtorNumber,String ownerNumber,String checking)
	    {
	        super();
	        System.out.println(name+", "+email+", "+password+", "+phone+", "+adress+", "+sex+", "+age+", "+time+", "+type);
	        this.keyword = keyword;
	        this.uri = uri;
	        this.name = name;
	        this.email = email;
	        this.password = password;
	        this.phone = phone;
	        this.adress = adress;
	        this.sex = sex;
	        this.age = age;
	        this.time = time;
	        this.type = type;
	        this.realtorNumber = realtorNumber;
	        this.ownerNumber = ownerNumber;
	        this.checking = checking;
	     
	    }
		//----------------------------------------
}