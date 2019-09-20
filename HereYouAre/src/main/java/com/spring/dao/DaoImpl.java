package com.spring.dao;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DaoImpl implements Dao{

	@Override
	public double[][] getCoordsPoint(String adongCd) {
		System.out.println("------------------getCoordsPoint Strat------------------");
		// TODO Auto-generated method stub
		String retVal[] = adongCd.split("_");

		double[][] dArr = null;
		try 
		{
			JSONParser jsonParse = new JSONParser();
			
			Object obj = jsonParse.parse(new FileReader(retVal[1]+"coords.json"));
		
			//JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다. 

			JSONObject jsonObj = (JSONObject) obj;
			
			//JSONObject에서 featuresArray를 get하여 JSONArray에 저장한다. 
			JSONArray featuresArray = (JSONArray) jsonObj.get("features");
			
			for(int i=0; i < featuresArray.size(); i++) 
			{ 
				JSONObject featuresObject = (JSONObject) featuresArray.get(i); 
				
				JSONObject propertiesObject = (JSONObject) featuresObject.get("properties");
				JSONObject geometryObject = (JSONObject) featuresObject.get("geometry"); 
				
				if(propertiesObject.get("adm_cd2").equals(retVal[0]))
				{
					System.out.println(propertiesObject.get("adm_nm"));
					
					JSONArray coordinatesArray = (JSONArray) geometryObject.get("coordinates");
					
					String str = coordinatesArray.toJSONString();
					str = str.substring(3);
					int length = str.length();
					str = str.substring(0, length-3);
					str = str.replace("[", "");
					str = str.replace("]", "");
									
					String[] strArr = str.split(",");
					
					dArr = new double[strArr.length/2][2];
					int count = 0;
					
					for(int x = 0;x<strArr.length;x=x+2)
					{
						
						String s = strArr[x];
						double dval = Double.valueOf(s);
						String s2 = strArr[x+1];
						double dval2 = Double.valueOf(s2);
	
						dArr[count][1] = dval; 
						dArr[count][0] = dval2;
						
						count++;
						
					}
					
					for(int x = 0;x<dArr.length;x++)
					{
						for(int y =0;y<dArr[x].length;y++)
						{
							System.out.print(dArr[x][y]+" ");
						}
						System.out.println();
					}
				
				
				}
								
			} 
			
			
		}
		catch(ParseException e){e.printStackTrace();}
		catch(IOException e) {e.printStackTrace();}
		catch(Exception e) {e.printStackTrace();}
		
	
		return dArr;
	}

	@Override
	public String[] getDong_DangerIndex(String adongCd) {
		// TODO Auto-generated method stub
		System.out.println("------------------getDong_DangerIndex Strat------------------");
		Map<String,String> map = new HashMap<String,String>();
		String retVal[] = adongCd.split("_");
		String adongCd_ = retVal[0].substring(0,8);
		String[] dangerIndexInfo = new String[6];

		
		try 
		{
			JSONParser jsonParse = new JSONParser();
			
			JSONArray obj = (JSONArray)jsonParse.parse(new FileReader(retVal[1]+"Dong_dangerIndex.json"));
		
			for(int i = 0 ;i<obj.size();i++)
			{
				JSONObject jsonObj = (JSONObject) obj.get(i);
//				System.out.println(jsonObj.get("기준_년_코드"));
				
				String str = (String) jsonObj.get("행정동_코드").toString();
				
				if(str.equals(adongCd_))
				{
//					System.out.println(jsonObj.get("행정동_코드"));
//					System.out.println(jsonObj.get("행정동_코드_명"));
//					System.out.println(jsonObj.get("신규_창업_위험_지수_구간_코드_명"));
//					System.out.println(jsonObj.get("폐업신고율"));
//					System.out.println(jsonObj.get("평균 폐업기간"));
//					System.out.println(jsonObj.get("점포증감률"));
//					
					
					map.put("adongCd", jsonObj.get("행정동_코드").toString());
					map.put("adongNm", jsonObj.get("행정동_코드_명").toString());
					map.put("dangerIndex", jsonObj.get("신규_창업_위험_지수_구간_코드_명").toString());
					map.put("closePer", jsonObj.get("폐업신고율").toString());
					map.put("closeMM", jsonObj.get("평균 폐업기간").toString());
					map.put("rate", jsonObj.get("점포증감률").toString());
					
					dangerIndexInfo[0] = jsonObj.get("행정동_코드").toString();
					dangerIndexInfo[1] = jsonObj.get("행정동_코드_명").toString();
					dangerIndexInfo[2] = jsonObj.get("신규_창업_위험_지수_구간_코드_명").toString();
					dangerIndexInfo[3] = jsonObj.get("폐업신고율").toString();
					dangerIndexInfo[4] = jsonObj.get("평균 폐업기간").toString();
					dangerIndexInfo[5] = jsonObj.get("점포증감률").toString();
					
				}
				

			}
			System.out.println(map);
//			for(int i = 0;i<map.size();i++)
//			{
//				System.out.println(map.get(i));
//			}
			
			
			
		}
		catch(ParseException e){e.printStackTrace();}
		catch(IOException e) {e.printStackTrace();}
		catch(Exception e) {e.printStackTrace();}
		
		return dangerIndexInfo;
	}

	@Override
	public String[] getGu_TradeIndex(String signguCd) {
		System.out.println("------------------getGu_TradeIndex Strat------------------");
		// TODO Auto-generated method stub
		String retVal[] = signguCd.split("_");
		Map<String,String> map = new HashMap<String,String>();
		String[] tradeIndexInfo = new String[5];
		try 
		{
			JSONParser jsonParse = new JSONParser();
			
			JSONArray obj = (JSONArray)jsonParse.parse(new FileReader(retVal[1]+"Gu_dangerIndex.json"));
		
			for(int i = 0 ;i<obj.size();i++)
			{
				JSONObject jsonObj = (JSONObject) obj.get(i);
//				System.out.println(jsonObj.get("기준_년_코드"));
				
				String str = (String) jsonObj.get("시군구_코드").toString();
				
				if(str.equals(retVal[0]))
				{
//					System.out.println(jsonObj.get("시군구_코드"));
//					System.out.println(jsonObj.get("시군구_코드_명"));
//					System.out.println(jsonObj.get("상권_변화_지표_명"));
//					System.out.println(jsonObj.get("운영_영업_개월_평균"));
//					System.out.println(jsonObj.get("폐업_영업_개월_평균"));
//					
					
					map.put("signguCd", jsonObj.get("시군구_코드").toString());
					map.put("signguNm", jsonObj.get("시군구_코드_명").toString());
					map.put("tradeIndex", jsonObj.get("상권_변화_지표_명").toString());
					map.put("operationMM", jsonObj.get("운영_영업_개월_평균").toString());
					map.put("closeMM", jsonObj.get("폐업_영업_개월_평균").toString());
					
					tradeIndexInfo[0] = jsonObj.get("시군구_코드").toString();
					tradeIndexInfo[1] = jsonObj.get("시군구_코드_명").toString();
					tradeIndexInfo[2] = jsonObj.get("상권_변화_지표_명").toString();
					tradeIndexInfo[3] = jsonObj.get("운영_영업_개월_평균").toString();
					tradeIndexInfo[4] = jsonObj.get("폐업_영업_개월_평균").toString();
				}
				

			}
			System.out.println(map);

			
			
		}
		catch(ParseException e){e.printStackTrace();}
		catch(IOException e) {e.printStackTrace();}
		catch(Exception e) {e.printStackTrace();}
		
		return tradeIndexInfo;
	}

	@Override
	public String[] getLivingPop(String adongCd) {
		System.out.println("------------------getLivingPop Strat------------------");
		// TODO Auto-generated method stub
		String retVal[] = adongCd.split("_");
		String getadongCd = retVal[0].substring(0,retVal[0].length()-2);
		Map<String,Double> map = new HashMap<String,Double>();
		Map<String,Integer> mapSum = new HashMap<String,Integer>();
		Map.Entry<String, Double> maxEntry = null;
		Map.Entry<String, Integer> maxSumEntry = null;
		Map<String,String> resultMap = new HashMap<String,String>();
		String[] livingPopInfo = new String[3];
		String maxTime = null;
		double maxTotal=0;
		String maxCate = null;
		int totalSum = 0;
		int m1Sum = 0,m2Sum=0,m3Sum=0,m4Sum=0,m5Sum=0,m6Sum=0,m7Sum=0,m8Sum=0,m9Sum=0,m10Sum=0,m11Sum=0,m12Sum=0,m13Sum=0,m14Sum=0;
		int f1Sum=0,f2Sum=0,f3Sum=0,f4Sum=0,f5Sum=0,f6Sum=0,f7Sum=0,f8Sum=0,f9Sum=0,f10Sum=0,f11Sum=0,f12Sum=0,f13Sum=0,f14Sum=0;
		try 
		{
			JSONParser jsonParse = new JSONParser();
			
			Object obj = jsonParse.parse(new FileReader(retVal[1]+"LivingPopulation.json"));
		
			//JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다. 

			JSONObject jsonObj = (JSONObject) obj;
			
			//JSONObject에서 featuresArray를 get하여 JSONArray에 저장한다. 
			JSONArray dateArray = (JSONArray) jsonObj.get("20190718");
			
			for(int i=0; i < dateArray.size(); i++) 
			{ 
				JSONObject dateObject = (JSONObject) dateArray.get(i); 
						
				String str = dateObject.get("adongCd").toString();
				
				if(str.equals(getadongCd))
				{
					double total = Double.valueOf(dateObject.get("total").toString());
					totalSum+=(int)total;
					m1Sum+=Double.valueOf(dateObject.get("m_0_9").toString());
					m2Sum+=Double.valueOf(dateObject.get("m_10_14").toString());
					m3Sum+=Double.valueOf(dateObject.get("m_15_19").toString());
					m4Sum+=Double.valueOf(dateObject.get("m_20_24").toString());
					m5Sum+=Double.valueOf(dateObject.get("m_25_29").toString());
					m6Sum+=Double.valueOf(dateObject.get("m_30_34").toString());
					m7Sum+=Double.valueOf(dateObject.get("m_35_39").toString());
					m8Sum+=Double.valueOf(dateObject.get("m_40_44").toString());
					m9Sum+=Double.valueOf(dateObject.get("m_45_49").toString());
					m10Sum+=Double.valueOf(dateObject.get("m_50_54").toString());
					m11Sum+=Double.valueOf(dateObject.get("m_55_59").toString());
					m12Sum+=Double.valueOf(dateObject.get("m_60_64").toString());
					m13Sum+=Double.valueOf(dateObject.get("m_65_69").toString());
					m14Sum+=Double.valueOf(dateObject.get("m_70_").toString());
					
					f1Sum+=Double.valueOf(dateObject.get("f_0_9").toString());
					f2Sum+=Double.valueOf(dateObject.get("f_10_14").toString());
					f3Sum+=Double.valueOf(dateObject.get("f_15_19").toString());
					f4Sum+=Double.valueOf(dateObject.get("f_20_24").toString());
					f5Sum+=Double.valueOf(dateObject.get("f_25_29").toString());
					f6Sum+=Double.valueOf(dateObject.get("f_30_34").toString());
					f7Sum+=Double.valueOf(dateObject.get("f_35_39").toString());
					f8Sum+=Double.valueOf(dateObject.get("f_40_44").toString());
					f9Sum+=Double.valueOf(dateObject.get("f_45_49").toString());
					f10Sum+=Double.valueOf(dateObject.get("f_50_54").toString());
					f11Sum+=Double.valueOf(dateObject.get("f_55_59").toString());
					f12Sum+=Double.valueOf(dateObject.get("f_60_64").toString());
					f13Sum+=Double.valueOf(dateObject.get("f_65_69").toString());
					f14Sum+=Double.valueOf(dateObject.get("f_70_").toString());
					
					
		
					
					
					
					
					if(total>maxTotal)
					{
						maxTotal=total;
						maxTime=dateObject.get("time").toString();
						
						map.put("남자 0세부터 9세", Double.valueOf(dateObject.get("m_0_9").toString()));
						map.put("남자 10세부터 14세", Double.valueOf(dateObject.get("m_10_14").toString()));
						map.put("남자 15세부터 19세", Double.valueOf(dateObject.get("m_15_19").toString()));
						map.put("남자 20세부터 24세", Double.valueOf(dateObject.get("m_20_24").toString()));
						map.put("남자 25세부터 29세", Double.valueOf(dateObject.get("m_25_29").toString()));
						map.put("남자 30세부터 34세", Double.valueOf(dateObject.get("m_30_34").toString()));
						map.put("남자 35세부터 39세", Double.valueOf(dateObject.get("m_35_39").toString()));
						map.put("남자 40세부터 44세", Double.valueOf(dateObject.get("m_40_44").toString()));
						map.put("남자 45세부터 49세", Double.valueOf(dateObject.get("m_45_49").toString()));
						map.put("남자 50세부터 54세", Double.valueOf(dateObject.get("m_50_54").toString()));
						map.put("남자 55세부터 59세", Double.valueOf(dateObject.get("m_55_59").toString()));
						map.put("남자 60세부터 64세", Double.valueOf(dateObject.get("m_60_64").toString()));
						map.put("남자 65세부터 69세", Double.valueOf(dateObject.get("m_65_69").toString()));
						map.put("남자 70세 이상", Double.valueOf(dateObject.get("m_70_").toString()));
						
						
						map.put("여자 0세부터 9세", Double.valueOf(dateObject.get("f_0_9").toString()));
						map.put("여자 10세부터 14세", Double.valueOf(dateObject.get("f_10_14").toString()));
						map.put("여자 15세부터 19세", Double.valueOf(dateObject.get("f_15_19").toString()));
						map.put("여자 20세부터 24세", Double.valueOf(dateObject.get("f_20_24").toString()));
						map.put("여자 25세부터 29세", Double.valueOf(dateObject.get("f_25_29").toString()));
						map.put("여자 30세부터 34세", Double.valueOf(dateObject.get("f_30_34").toString()));
						map.put("여자 35세부터 39세", Double.valueOf(dateObject.get("f_35_39").toString()));
						map.put("여자 40세부터 44세", Double.valueOf(dateObject.get("f_40_44").toString()));
						map.put("여자 45세부터 49세", Double.valueOf(dateObject.get("f_45_49").toString()));
						map.put("여자 50세부터 54세", Double.valueOf(dateObject.get("f_50_54").toString()));
						map.put("여자 55세부터 59세", Double.valueOf(dateObject.get("f_55_59").toString()));
						map.put("여자 60세부터 64세", Double.valueOf(dateObject.get("f_60_64").toString()));
						map.put("여자 65세부터 69세", Double.valueOf(dateObject.get("f_65_69").toString()));
						map.put("여자 70세 이상", Double.valueOf(dateObject.get("f_70_").toString()));
						
						
						    for (Map.Entry<String, Double> entry : map.entrySet()) {
						        if (maxEntry == null || entry.getValue()
						            .compareTo(maxEntry.getValue()) > 0) {
						            maxEntry = entry;
						            
						        }
						    }
						
					}
					
					
					mapSum.put("남자 0세부터 9세",m1Sum);
					mapSum.put("남자 10세부터 14세",m2Sum);
					mapSum.put("남자 15세부터 19세",m3Sum);
					mapSum.put("남자 20세부터 24세", m4Sum);
					mapSum.put("남자 25세부터 29세", m5Sum);
					mapSum.put("남자 30세부터 34세", m6Sum);
					mapSum.put("남자 35세부터 39세", m7Sum);
					mapSum.put("남자 40세부터 44세", m8Sum);
					mapSum.put("남자 45세부터 49세", m9Sum);
					mapSum.put("남자 50세부터 54세", m10Sum);
					mapSum.put("남자 55세부터 59세", m11Sum);
					mapSum.put("남자 60세부터 64세", m12Sum);
					mapSum.put("남자 65세부터 69세", m14Sum);
					mapSum.put("남자 70세 이상", m14Sum);
					
					
					mapSum.put("여자 0세부터 9세", f1Sum);
					mapSum.put("여자 10세부터 14세", f2Sum);
					mapSum.put("여자 15세부터 19세", f3Sum);
					mapSum.put("여자 20세부터 24세", f4Sum);
					mapSum.put("여자 25세부터 29세", f5Sum);
					mapSum.put("여자 30세부터 34세", f6Sum);
					mapSum.put("여자 35세부터 39세", f7Sum);
					mapSum.put("여자 40세부터 44세", f8Sum);
					mapSum.put("여자 45세부터 49세", f9Sum);
					mapSum.put("여자 50세부터 54세", f10Sum);
					mapSum.put("여자 55세부터 59세", f11Sum);
					mapSum.put("여자 60세부터 64세", f12Sum);
					mapSum.put("여자 65세부터 69세", f13Sum);
					mapSum.put("여자 70세 이상", f14Sum);
					
					
					    for (Map.Entry<String, Integer> entry : mapSum.entrySet()) {
					        if (maxSumEntry == null || entry.getValue()
					            .compareTo(maxSumEntry.getValue()) > 0) {
					            maxSumEntry = entry;
					            
					        }
					    }
					
					
					
				}
												
			}
//			System.out.println(totalSum);
			resultMap.put("totalPop",String.valueOf(totalSum));
//			System.out.println(maxSumEntry.toString());
			String[] strArr = maxSumEntry.toString().split("=");
			resultMap.put("mainTargetInfo", strArr[0]+" - "+strArr[1]);
			livingPopInfo[1] = strArr[0]+" - "+strArr[1]+" 천명";
			
			strArr = maxEntry.toString().split("=");
//			System.out.println(maxTime+", "+maxTotal);
//			System.out.println(maxEntry.toString());
			resultMap.put("maxTimeInfo", maxTime+"시 - "+maxTotal+" 천명 <br>"+strArr[0]+" - "+strArr[1]+" 천명");
			
			livingPopInfo[0] = String.valueOf(totalSum)+" 천명";
			livingPopInfo[2] = maxTime+"시 - "+maxTotal+" 천명 <br>"+strArr[0]+" - "+strArr[1]+" 천명";
			
		}
		catch(ParseException e){e.printStackTrace();}
		catch(IOException e) {e.printStackTrace();}
		catch(Exception e) {e.printStackTrace();}
		
		System.out.println(resultMap);
		
		return livingPopInfo;
	}

	
	
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}

	@Override
	public Map<String,List<String[]>> getStoreList(String adongCd) {
		System.out.println("------------------getStoreList Strat------------------");
		// TODO Auto-generated method stub
		Map<String,List<String[]>> resultMap = new HashMap<String,List<String[]>>();
		List<String[]> list1 = new ArrayList<String[]>();
		List<String[]> list2 = new ArrayList<String[]>();
		List<String[]> list3 = new ArrayList<String[]>();
		List<String[]> list4 = new ArrayList<String[]>();
		List<String[]> list5 = new ArrayList<String[]>();
		List<String[]> list6 = new ArrayList<String[]>();
		List<String[]> list7 = new ArrayList<String[]>();
		List<String[]> list8 = new ArrayList<String[]>();
		List<String[]> list9 = new ArrayList<String[]>();
		List<String[]> list10 = new ArrayList<String[]>();
		List<String[]> list12 = new ArrayList<String[]>();
		List<String[]> list13 = new ArrayList<String[]>();
		List<String[]> list14 = new ArrayList<String[]>();
		List<String[]> list15 = new ArrayList<String[]>();
		
		
	      BufferedReader br = null;
	      try {
	    	  for(int page = 1;page<10;page++)
	    	  {
	    		  
	    		
		        String urlstr="http://apis.data.go.kr/B553077/api/open/sdsc/storeListInDong?divId=adongCd&indsLclsCd=Q&key="+adongCd+"&numOfRows=1000&ServiceKey=AAI7omfpkLUF8daCfQvvbjz%2FTfPKmxj8afCyJC%2FMgv3FC4jcXcCAX1%2FzwDmz7J2CBT7TObR6wzhUsxsc0LkAdA%3D%3D&pageNo="+page;
//		        
		        URL url = new URL(urlstr);
		         HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
		         urlconnection.setRequestMethod("GET");
		         br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
		         String result = "";
		         String line;
		         Node node = null;
		         StringBuffer response = new StringBuffer();
		  
		         while((line = br.readLine()) != null) {
//		        	   System.out.println(line);		    
		        	   response.append(line);
		           }
		         br.close();
		         
		         DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		         DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		      
		         Document doc = dBuilder.parse(urlstr);
		         doc.getDocumentElement().normalize();//정규화
		         
//		         System.out.println(doc.getDocumentElement().getNodeName());
		         
		         NodeList nList = doc.getElementsByTagName("item");
		         System.out.println("파싱할 리스트 수: " +nList.getLength());
		         
		         if(nList.getLength()==0)
		         {
		        	 break;
		         }
		         
		         for(int i = 0;i<nList.getLength();i++)
		         {
		        	 Node nNode = nList.item(i);
		        	 
		        	 
		        	 
		        	 if(nNode.getNodeType()==Node.ELEMENT_NODE)
		        	 {
		        		 Element eElement = (Element) nNode;
//		        		 System.out.println("############################");
//		        		 System.out.println("상호명: "+getTagValue("bizesNm",eElement));
//		        		 System.out.println("중분류코드: "+getTagValue("indsMclsCd",eElement));
//		        		 System.out.println("중분류명: "+getTagValue("indsMclsNm",eElement));
//		        		 System.out.println("소분류명: "+getTagValue("indsSclsNm",eElement));
//		        		 System.out.println("지번주소: "+getTagValue("lnoAdr",eElement));
//		        		 System.out.println("도로명주소: "+getTagValue("rdnmAdr",eElement));
//		        		 System.out.println("위도: "+getTagValue("lat",eElement));
//		        		 System.out.println("경도: "+getTagValue("lon",eElement));
//		        		 
		        		 if(getTagValue("indsMclsCd",eElement).equals("Q01"))
		        		 {
		        			 String[] storeArr1 = new String[9];
		        			 storeArr1[0] = getTagValue("bizesNm",eElement);
		        			 storeArr1[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr1[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr1[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr1[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr1[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr1[6] = getTagValue("lat",eElement);
		        			 storeArr1[7] = getTagValue("lon",eElement);
		        			 storeArr1[8] = getTagValue("brchNm",eElement);
		        			 
		        			 list1.add(storeArr1);
		        			 
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q02"))
		        		 {
		        			 String[] storeArr2 = new String[9];
		        			 
		        			 storeArr2[0] = getTagValue("bizesNm",eElement);
		        			 storeArr2[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr2[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr2[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr2[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr2[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr2[6] = getTagValue("lat",eElement);
		        			 storeArr2[7] = getTagValue("lon",eElement);
		        			 storeArr2[8] = getTagValue("brchNm",eElement);
		        			 
		        			 list2.add(storeArr2);
		        		}
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q03"))
		        		 {
		        			 
		        			 String[] storeArr3 = new String[9];
		        			 storeArr3[0] = getTagValue("bizesNm",eElement);
		        			 storeArr3[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr3[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr3[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr3[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr3[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr3[6] = getTagValue("lat",eElement);
		        			 storeArr3[7] = getTagValue("lon",eElement);
		        			 storeArr3[8] = getTagValue("brchNm",eElement);
		        			 
		        			 list3.add(storeArr3);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q04"))
		        		 {
		        			 
		        			 String[] storeArr4 = new String[9];
		        			 storeArr4[0] = getTagValue("bizesNm",eElement);
		        			 storeArr4[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr4[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr4[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr4[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr4[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr4[6] = getTagValue("lat",eElement);
		        			 storeArr4[7] = getTagValue("lon",eElement);
		        			 storeArr4[8] = getTagValue("brchNm",eElement);
		        			 list4.add(storeArr4);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q05"))
		        		 {
		        			 
		        			 String[] storeArr5 = new String[9];
		        			 storeArr5[0] = getTagValue("bizesNm",eElement);
		        			 storeArr5[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr5[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr5[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr5[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr5[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr5[6] = getTagValue("lat",eElement);
		        			 storeArr5[7] = getTagValue("lon",eElement);
		        			 storeArr5[8] = getTagValue("brchNm",eElement);
		        			 list5.add(storeArr5);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q06"))
		        		 {
		        			 String[] storeArr6 = new String[9];
		        			 
		        			 storeArr6[0] = getTagValue("bizesNm",eElement);
		        			 storeArr6[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr6[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr6[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr6[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr6[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr6[6] = getTagValue("lat",eElement);
		        			 storeArr6[7] = getTagValue("lon",eElement);
		        			 storeArr6[8] = getTagValue("brchNm",eElement);
		        			 list6.add(storeArr6);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q07"))
		        		 {
		        			 String[] storeArr7 = new String[9];
		        			 
		        			 storeArr7[0] = getTagValue("bizesNm",eElement);
		        			 storeArr7[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr7[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr7[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr7[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr7[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr7[6] = getTagValue("lat",eElement);
		        			 storeArr7[7] = getTagValue("lon",eElement);
		        			 storeArr7[8] = getTagValue("brchNm",eElement);
		        			 list7.add(storeArr7);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q08"))
		        		 {
		        			 String[] storeArr8 = new String[9];
		        			 
		        			 storeArr8[0] = getTagValue("bizesNm",eElement);
		        			 storeArr8[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr8[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr8[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr8[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr8[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr8[6] = getTagValue("lat",eElement);
		        			 storeArr8[7] = getTagValue("lon",eElement);
		        			 storeArr8[8] = getTagValue("brchNm",eElement);
		        			 list8.add(storeArr8);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q09"))
		        		 {
		        			 String[] storeArr9 = new String[9];
		        			 
		        			 storeArr9[0] = getTagValue("bizesNm",eElement);
		        			 storeArr9[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr9[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr9[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr9[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr9[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr9[6] = getTagValue("lat",eElement);
		        			 storeArr9[7] = getTagValue("lon",eElement);
		        			 storeArr9[8] = getTagValue("brchNm",eElement);
		        			 list9.add(storeArr9);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q10"))
		        		 {
		        			 String[] storeArr10 = new String[9];
		        			 
		        			 storeArr10[0] = getTagValue("bizesNm",eElement);
		        			 storeArr10[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr10[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr10[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr10[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr10[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr10[6] = getTagValue("lat",eElement);
		        			 storeArr10[7] = getTagValue("lon",eElement);
		        			 storeArr10[8] = getTagValue("brchNm",eElement);
		        			 list10.add(storeArr10);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q12"))
		        		 {
		        			 String[] storeArr12 = new String[9];
		        			 
		        			 storeArr12[0] = getTagValue("bizesNm",eElement);
		        			 storeArr12[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr12[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr12[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr12[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr12[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr12[6] = getTagValue("lat",eElement);
		        			 storeArr12[7] = getTagValue("lon",eElement);
		        			 storeArr12[8] = getTagValue("brchNm",eElement);
		        			 list12.add(storeArr12);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q13"))
		        		 {
		        			 String[] storeArr13 = new String[9];
		        			 
		        			 storeArr13[0] = getTagValue("bizesNm",eElement);
		        			 storeArr13[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr13[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr13[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr13[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr13[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr13[6] = getTagValue("lat",eElement);
		        			 storeArr13[7] = getTagValue("lon",eElement);
		        			 storeArr13[8] = getTagValue("brchNm",eElement);
		        			 list13.add(storeArr13);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q14"))
		        		 {
		        			 String[] storeArr14 = new String[9];
		        			 
		        			 storeArr14[0] = getTagValue("bizesNm",eElement);
		        			 storeArr14[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr14[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr14[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr14[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr14[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr14[6] = getTagValue("lat",eElement);
		        			 storeArr14[7] = getTagValue("lon",eElement);
		        			 storeArr14[8] = getTagValue("brchNm",eElement);
		        			 list14.add(storeArr14);
		        		 }
		        		 else if(getTagValue("indsMclsCd",eElement).equals("Q15"))
		        		 {
		        			 String[] storeArr15 = new String[9];
		        			 
		        			 storeArr15[0] = getTagValue("bizesNm",eElement);
		        			 storeArr15[1] = getTagValue("indsMclsCd",eElement);
		        			 storeArr15[2] = getTagValue("indsMclsNm",eElement);
		        			 storeArr15[3] = getTagValue("indsSclsNm",eElement);
		        			 storeArr15[4] = getTagValue("lnoAdr",eElement);
		        			 storeArr15[5] = getTagValue("rdnmAdr",eElement);
		        			 storeArr15[6] = getTagValue("lat",eElement);
		        			 storeArr15[7] = getTagValue("lon",eElement);
		        			 storeArr15[8] = getTagValue("brchNm",eElement);
		        			 list15.add(storeArr15);
		        		 }
		        		 
		        		 
		        	 }
	        	 
		         }
		         
					System.out.println("page number : "+page);
	    	  }
	         
	      }catch(Exception e) {
	         System.out.println(e.getMessage());
	      }
	      
	      resultMap.put("Q01", list1);
	      resultMap.put("Q02", list2);
	      resultMap.put("Q03", list3);
	      resultMap.put("Q04", list4);
	      resultMap.put("Q05", list5);
	      resultMap.put("Q06", list6);
	      resultMap.put("Q07", list7);
	      resultMap.put("Q08", list8);
	      resultMap.put("Q09", list9);
	      resultMap.put("Q10", list10);
	      resultMap.put("Q12", list12);
	      resultMap.put("Q13", list13);
	      resultMap.put("Q14", list14);
	      resultMap.put("Q15", list15);
	      
	      if(resultMap!=null)
	      {
	    	  System.out.println();
	    	  System.out.println("Store Parsing Sucees");
	      }
	      
	      
		return resultMap;
	}

	@Override
	public Map<String, List<String[]>> getStoreList2(String adongCd) {
		// TODO Auto-generated method stub
		System.out.println("------------------getStoreList Strat------------------");

		String retVal[] = adongCd.split("_");
		
		Map<String,List<String[]>> resultMap = new HashMap<String,List<String[]>>();
		List<String[]> list1 = new ArrayList<String[]>();
		List<String[]> list2 = new ArrayList<String[]>();
		List<String[]> list3 = new ArrayList<String[]>();
		List<String[]> list4 = new ArrayList<String[]>();
		List<String[]> list5 = new ArrayList<String[]>();
		List<String[]> list6 = new ArrayList<String[]>();
		List<String[]> list7 = new ArrayList<String[]>();
		List<String[]> list8 = new ArrayList<String[]>();
		List<String[]> list9 = new ArrayList<String[]>();
		List<String[]> list10 = new ArrayList<String[]>();
		List<String[]> list12 = new ArrayList<String[]>();
		List<String[]> list13 = new ArrayList<String[]>();
		List<String[]> list14 = new ArrayList<String[]>();
		List<String[]> list15 = new ArrayList<String[]>();
		
		int count = 0;
		
		try 
		{
			JSONParser jsonParse = new JSONParser();
			
//			JSONArray obj = (JSONArray)jsonParse.parse(new FileReader("D:\\storeInfo.json"));
			JSONArray obj = (JSONArray)jsonParse.parse(new FileReader(retVal[1]+"storeInfo.json"));

		
			for(int i = 0 ;i<obj.size();i++)
			{
				JSONObject jsonObj = (JSONObject) obj.get(i);
//				System.out.println(jsonObj.get("상호명"));
				
				String str = (String) jsonObj.get("행정동코드").toString();
//				
//				System.out.println(jsonObj.get("행정동코드"));
				
				if(str.equals(retVal[0]))
				{
					count++;
//					System.out.println(jsonObj.get("행정동명"));
//					System.out.println(jsonObj.get("상호명"));
//					System.out.println(jsonObj.get("지점명"));
//					System.out.println(jsonObj.get("상권업종중분류코드"));
//					System.out.println(jsonObj.get("상권업종소분류명"));
//					System.out.println(jsonObj.get("지번주소"));
//					System.out.println(jsonObj.get("도로명주소"));
//					System.out.println(jsonObj.get("위도"));
//					System.out.println(jsonObj.get("경도"));

				String indsMclsCd = jsonObj.get("상권업종중분류코드").toString();
					 if(indsMclsCd.equals("Q01"))
	        		 {
	        			 String[] storeArr1 = new String[9];
	        			 storeArr1[0] = jsonObj.get("상호명").toString();
	        			 storeArr1[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr1[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr1[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr1[4] = jsonObj.get("지번주소").toString();
	        			 storeArr1[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr1[6] = jsonObj.get("위도").toString();
	        			 storeArr1[7] = jsonObj.get("경도").toString();
	        			 storeArr1[8] = jsonObj.get("지점명").toString();
	        			 
	        			 list1.add(storeArr1);
	        			 
	        		 }
	        		 else if(indsMclsCd.equals("Q02"))
	        		 {
	        			 String[] storeArr2 = new String[9];
	        			 
	        			 storeArr2[0] = jsonObj.get("상호명").toString();
	        			 storeArr2[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr2[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr2[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr2[4] = jsonObj.get("지번주소").toString();
	        			 storeArr2[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr2[6] = jsonObj.get("위도").toString();
	        			 storeArr2[7] = jsonObj.get("경도").toString();
	        			 storeArr2[8] = jsonObj.get("지점명").toString();
	        			 
	        			 list2.add(storeArr2);
	        		}
	        		 else if(indsMclsCd.equals("Q03"))
	        		 {
	        			 
	        			 String[] storeArr3 = new String[9];
	        			 storeArr3[0] = jsonObj.get("상호명").toString();
	        			 storeArr3[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr3[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr3[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr3[4] = jsonObj.get("지번주소").toString();
	        			 storeArr3[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr3[6] = jsonObj.get("위도").toString();
	        			 storeArr3[7] = jsonObj.get("경도").toString();
	        			 storeArr3[8] = jsonObj.get("지점명").toString();
	        			 
	        			 list3.add(storeArr3);
	        		 }
	        		 else if(indsMclsCd.equals("Q04"))
	        		 {
	        			 
	        			 String[] storeArr4 = new String[9];
	        			 storeArr4[0] = jsonObj.get("상호명").toString();
	        			 storeArr4[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr4[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr4[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr4[4] = jsonObj.get("지번주소").toString();
	        			 storeArr4[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr4[6] = jsonObj.get("위도").toString();
	        			 storeArr4[7] = jsonObj.get("경도").toString();
	        			 storeArr4[8] = jsonObj.get("지점명").toString();
	        			 list4.add(storeArr4);
	        		 }
	        		 else if(indsMclsCd.equals("Q05"))
	        		 {
	        			 
	        			 String[] storeArr5 = new String[9];
	        			 storeArr5[0] = jsonObj.get("상호명").toString();
	        			 storeArr5[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr5[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr5[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr5[4] = jsonObj.get("지번주소").toString();
	        			 storeArr5[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr5[6] = jsonObj.get("위도").toString();
	        			 storeArr5[7] = jsonObj.get("경도").toString();
	        			 storeArr5[8] = jsonObj.get("지점명").toString();
	        			 list5.add(storeArr5);
	        		 }
	        		 else if(indsMclsCd.equals("Q06"))
	        		 {
	        			 String[] storeArr6 = new String[9];
	        			 
	        			 storeArr6[0] = jsonObj.get("상호명").toString();
	        			 storeArr6[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr6[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr6[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr6[4] = jsonObj.get("지번주소").toString();
	        			 storeArr6[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr6[6] = jsonObj.get("위도").toString();
	        			 storeArr6[7] = jsonObj.get("경도").toString();
	        			 storeArr6[8] = jsonObj.get("지점명").toString();
	        			 list6.add(storeArr6);
	        		 }
	        		 else if(indsMclsCd.equals("Q07"))
	        		 {
	        			 String[] storeArr7 = new String[9];
	        			 
	        			 storeArr7[0] = jsonObj.get("상호명").toString();
	        			 storeArr7[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr7[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr7[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr7[4] = jsonObj.get("지번주소").toString();
	        			 storeArr7[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr7[6] = jsonObj.get("위도").toString();
	        			 storeArr7[7] = jsonObj.get("경도").toString();
	        			 storeArr7[8] = jsonObj.get("지점명").toString();
	        			 list7.add(storeArr7);
	        		 }
	        		 else if(indsMclsCd.equals("Q08"))
	        		 {
	        			 String[] storeArr8 = new String[9];
	        			 
	        			 storeArr8[0] = jsonObj.get("상호명").toString();
	        			 storeArr8[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr8[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr8[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr8[4] = jsonObj.get("지번주소").toString();
	        			 storeArr8[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr8[6] = jsonObj.get("위도").toString();
	        			 storeArr8[7] = jsonObj.get("경도").toString();
	        			 storeArr8[8] = jsonObj.get("지점명").toString();
	        			 list8.add(storeArr8);
	        		 }
	        		 else if(indsMclsCd.equals("Q09"))
	        		 {
	        			 String[] storeArr9 = new String[9];
	        			 
	        			 storeArr9[0] = jsonObj.get("상호명").toString();
	        			 storeArr9[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr9[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr9[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr9[4] = jsonObj.get("지번주소").toString();
	        			 storeArr9[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr9[6] = jsonObj.get("위도").toString();
	        			 storeArr9[7] = jsonObj.get("경도").toString();
	        			 storeArr9[8] = jsonObj.get("지점명").toString();
	        			 list9.add(storeArr9);
	        		 }
	        		 else if(indsMclsCd.equals("Q10"))
	        		 {
	        			 String[] storeArr10 = new String[9];
	        			 
	        			 storeArr10[0] = jsonObj.get("상호명").toString();
	        			 storeArr10[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr10[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr10[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr10[4] = jsonObj.get("지번주소").toString();
	        			 storeArr10[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr10[6] = jsonObj.get("위도").toString();
	        			 storeArr10[7] = jsonObj.get("경도").toString();
	        			 storeArr10[8] = jsonObj.get("지점명").toString();
	        			 list10.add(storeArr10);
	        		 }
	        		 else if(indsMclsCd.equals("Q12"))
	        		 {
	        			 String[] storeArr12 = new String[9];
	        			 
	        			 storeArr12[0] = jsonObj.get("상호명").toString();
	        			 storeArr12[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr12[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr12[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr12[4] = jsonObj.get("지번주소").toString();
	        			 storeArr12[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr12[6] = jsonObj.get("위도").toString();
	        			 storeArr12[7] = jsonObj.get("경도").toString();
	        			 storeArr12[8] = jsonObj.get("지점명").toString();
	        			 list12.add(storeArr12);
	        		 }
	        		 else if(indsMclsCd.equals("Q13"))
	        		 {
	        			 String[] storeArr13 = new String[9];
	        			 
	        			 storeArr13[0] = jsonObj.get("상호명").toString();
	        			 storeArr13[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr13[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr13[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr13[4] = jsonObj.get("지번주소").toString();
	        			 storeArr13[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr13[6] = jsonObj.get("위도").toString();
	        			 storeArr13[7] = jsonObj.get("경도").toString();
	        			 storeArr13[8] = jsonObj.get("지점명").toString();
	        			 list13.add(storeArr13);
	        		 }
	        		 else if(indsMclsCd.equals("Q14"))
	        		 {
	        			 String[] storeArr14 = new String[9];
	        			 
	        			 storeArr14[0] = jsonObj.get("상호명").toString();
	        			 storeArr14[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr14[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr14[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr14[4] = jsonObj.get("지번주소").toString();
	        			 storeArr14[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr14[6] = jsonObj.get("위도").toString();
	        			 storeArr14[7] = jsonObj.get("경도").toString();
	        			 storeArr14[8] = jsonObj.get("지점명").toString();
	        			 list14.add(storeArr14);
	        		 }
	        		 else if(indsMclsCd.equals("Q15"))
	        		 {
	        			 String[] storeArr15 = new String[9];
	        			 
	        			 storeArr15[0] = jsonObj.get("상호명").toString();
	        			 storeArr15[1] = jsonObj.get("상권업종중분류코드").toString();
	        			 storeArr15[2] = jsonObj.get("상권업종중분류명").toString();
	        			 storeArr15[3] = jsonObj.get("상권업종소분류명").toString();
	        			 storeArr15[4] = jsonObj.get("지번주소").toString();
	        			 storeArr15[5] = jsonObj.get("도로명주소").toString();
	        			 storeArr15[6] = jsonObj.get("위도").toString();
	        			 storeArr15[7] = jsonObj.get("경도").toString();
	        			 storeArr15[8] = jsonObj.get("지점명").toString();
	        			 list15.add(storeArr15);
	        		 }
					
				}

//				System.out.println(jsonObj);

			}

			System.out.println("총 파싱 수 : "+count);
			
			
		}
		catch(ParseException e){e.printStackTrace();}
		catch(IOException e) {e.printStackTrace();}
		catch(Exception e) {e.printStackTrace();}
		
		 resultMap.put("Q01", list1);
	      resultMap.put("Q02", list2);
	      resultMap.put("Q03", list3);
	      resultMap.put("Q04", list4);
	      resultMap.put("Q05", list5);
	      resultMap.put("Q06", list6);
	      resultMap.put("Q07", list7);
	      resultMap.put("Q08", list8);
	      resultMap.put("Q09", list9);
	      resultMap.put("Q10", list10);
	      resultMap.put("Q12", list12);
	      resultMap.put("Q13", list13);
	      resultMap.put("Q14", list14);
	      resultMap.put("Q15", list15);
	      
	      
	      if(resultMap!=null)
	      {
	    	  System.out.println();
	    	  System.out.println("Store Parsing Sucees");
	      }
	      
		
		return resultMap;
		}


}
