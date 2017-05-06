package com.xianpin365.domain;

public enum Language {

	ZH_CN("zh-cn"), EN_US("en-us");

	private String language;

	private Language(String language) {
		this.language = language;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
}
