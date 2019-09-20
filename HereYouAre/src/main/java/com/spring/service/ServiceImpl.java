package com.spring.service;

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

import com.spring.dao.Dao;

public class ServiceImpl implements Service{
	
	private Dao dao;
	
	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}
	

	@Override
	public double[][] getCoordsPoint(String adongCd) {
		// TODO Auto-generated method stub
		return dao.getCoordsPoint(adongCd);
	}

	@Override
	public String[] getDong_DangerIndex(String adongCd) {
		// TODO Auto-generated method stub
		return dao.getDong_DangerIndex(adongCd);
	}

	@Override
	public String[] getGu_TradeIndex(String signguCd) {
		// TODO Auto-generated method stub
		return dao.getGu_TradeIndex(signguCd);
	}

	@Override
	public String[] getLivingPop(String adongCd) {
		// TODO Auto-generated method stub
		return dao.getLivingPop(adongCd);
	}

	@Override
	public Map<String, List<String[]>> getStoreList(String adongCd) {
		// TODO Auto-generated method stub
		return dao.getStoreList(adongCd);
	}

	@Override
	public Map<String, List<String[]>> getStoreList2(String adongCd) {
		// TODO Auto-generated method stub
		return dao.getStoreList2(adongCd);
	}

	
}
