package com.spring.dao;

import java.util.List;
import java.util.Map;

public interface Dao {
	public double[][] getCoordsPoint(String adongCd);
	public String[] getDong_DangerIndex(String adongCd);
	public String[] getGu_TradeIndex(String signguCd);
	public String[] getLivingPop(String adongCd);
	public Map<String,List<String[]>> getStoreList(String adongCd);
	public Map<String,List<String[]>> getStoreList2(String adongCd);
}
