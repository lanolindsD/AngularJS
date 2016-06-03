package com.daeyang.gen.utl;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PropertyUtil {
	
	private static final String FILE_SEPARATOR = System.getProperty("file.separator");
	private static final String PROPERITES_PATH = PropertyUtil.class.getResource("").getPath().substring(0, PropertyUtil.class.getResource("").getPath().lastIndexOf("com"));
	private static final Logger LOG = LoggerFactory.getLogger(PropertyUtil.class);
	
	public static String GetTitleByUrl(String url){
		List<Map<String,String>> menu = PropertyUtil.GetMenuProperties();
		
		for(Map<String,String> m : menu){
			if((url+".do").equals(m.get("url"))){
				return m.get("title");
			}
		}
		return "";
	}
	
	
	public static  List<Map<String,String>> GetMenuProperties(){
		List<Map<String,String>> list = null;
		String filePath = PROPERITES_PATH+"properties"+FILE_SEPARATOR+"menu.properties";		
		FileInputStream fis;
		try {
			fis = new FileInputStream(filePath);
			if(fis!=null){
				list = new ArrayList<Map<String,String>>();
				byte[] value = new byte[fis.available()];
				fis.read(value,0,value.length);
				String str = new String(value, "UTF-8");
				String[] rows = str.split("\\r?\\n");
				
				Map<String,String> cell = null;
				for(String row : rows){
					String url = row.split(",")[0];
					String title = row.split(",")[1];
					cell = new LinkedHashMap<String,String>();
					cell.put("url", url);
					cell.put("title", title);
					list.add(cell);
				}
			}
		} catch (FileNotFoundException e) {
			LOG.error("파일 없음");
			e.printStackTrace();
		} catch (IOException e) {
			LOG.error("파일읽기 실패");
			e.printStackTrace();
		}
		return list;
	}
	

}
