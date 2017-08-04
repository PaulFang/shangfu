package com.xianpin365.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtil<T> {

	public static final ObjectMapper mapper = new ObjectMapper();
	
	private JsonUtil() {}

	public String getJson(Object object){
		String json = null;
		try {
			json = mapper.writeValueAsString(object);
		} catch (JsonProcessingException e) {
			return json;
		}
		return json;
	}
	
	public static Object getObject(String json, Class clazz){
		Object t = null;
		try {
			t = mapper.readValue(json, clazz);
		} catch (Exception e) {
		}
		return t;
	}
	
}
