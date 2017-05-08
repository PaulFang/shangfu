package com.xianpin365.domain;

import java.util.Date;

public class Action {

	private Date time;
	private String referer;
	private String requestURL;

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getReferer() {
		return referer;
	}

	public void setReferer(String referer) {
		this.referer = referer;
	}

	public String getRequestURL() {
		return requestURL;
	}

	public void setRequestURL(String requestURL) {
		this.requestURL = requestURL;
	}

	@Override
	public String toString() {
		return "Action [time=" + time + ", referer=" + referer + ", requestURL=" + requestURL + "]";
	}
	
	

}
