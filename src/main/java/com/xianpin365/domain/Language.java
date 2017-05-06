package com.xianpin365.domain;

public enum Language {

	ZH_CN("zh-CN"), EN_US("en-US");

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

	public static Language parse(String language) {
		Language lang = Language.ZH_CN; // Default
		for (Language item : Language.values()) {
			if (item.getLanguage().equals(language)) {
				lang = item;
				break;
			}
		}
		return lang;
	}

}
