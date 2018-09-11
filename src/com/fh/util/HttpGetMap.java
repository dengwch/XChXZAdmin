package com.fh.util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
public class HttpGetMap {

		/**
		 * 页面传来的Map转换成Java可用的Map
		 * @param properties
		 * @return
		 */
		public Map MapGetMap(Map properties){
			// 返回值Map
					 Map<String,String> returnMap = new HashMap<String,String>();
					 Iterator entries = properties.entrySet().iterator();
					 Map.Entry entry;
					 String name = "";
					 String value = "";
					 while (entries.hasNext()) {
					  entry = (Map.Entry) entries.next();
					  name = (String) entry.getKey();
					  Object valueObj = entry.getValue();
					  if(null == valueObj){
					   value = "";
					  }else if(valueObj instanceof String[]){
					   String[] values = (String[])valueObj;
					   for(int i=0;i<values.length;i++){
					    value = values[i] + ",";
					   }
					   value = value.substring(0, value.length()-1);
					  }else{
					   value = valueObj.toString();
					  }
					  returnMap.put(name, value);
					 }
					 return returnMap;
			
		}
		
		
		public Map<String, String> requestGetMap(HttpServletRequest request){
			// 返回值Map
					 Map properties=request.getParameterMap();
					 Map<String,String> returnMap = new HashMap<String,String>();
					 Iterator entries = properties.entrySet().iterator();
					 Map.Entry entry;
					 String name = "";
					 String value = "";
					 while (entries.hasNext()) {
					  entry = (Map.Entry) entries.next();
					  name = (String) entry.getKey();
					  Object valueObj = entry.getValue();
					  if(null == valueObj){
					   value = "";
					  }else if(valueObj instanceof String[]){
					   String[] values = (String[])valueObj;
					   for(int i=0;i<values.length;i++){
					    value = values[i] + ",";
					   }
					   value = value.substring(0, value.length()-1);
					  }else{
					   value = valueObj.toString();
					  }
					  returnMap.put(name, value);
					 }
					 return returnMap;
			
		}
		/**
		 * json字符串转换成map
		 * @param jsonStr
		 * @return
		 * @throws Exception
		 */
		public Map jsonToObject(String jsonStr) throws Exception {
			JSONObject jsonObj = new JSONObject(jsonStr);
			Iterator<String> nameItr = jsonObj.keys();
			String name;
			Map<String, String> outMap = new HashMap<String, String>();
			while (nameItr.hasNext()) {
				name = nameItr.next();
				outMap.put(name, jsonObj.getString(name));
			}
			return outMap;
		}
	}
