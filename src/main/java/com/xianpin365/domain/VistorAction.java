package com.xianpin365.domain;

import java.util.ArrayList;
import java.util.List;

public class VistorAction {

	private String vistorHost;
	private Language language;
	private String userAgent;
	private List<Action> actions = new ArrayList<Action>();

	public String getVistorHost() {
		return vistorHost;
	}

	public void setVistorHost(String vistorHost) {
		this.vistorHost = vistorHost;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public String getUserAgent() {
		return userAgent;
	}

	public void setUserAgent(String userAgent) {
		this.userAgent = userAgent;
	}

	public List<Action> getActions() {
		return actions;
	}

	public void setActions(List<Action> actions) {
		this.actions = actions;
	}

	@Override
	public String toString() {
		return "VistorAction [vistorHost=" + vistorHost + ", language=" + language + ", userAgent=" + userAgent
				+ ", actions=" + actions + "]";
	}
	
	public String getFormattedString(){
		String r = "VistorAction [vistorHost=" + vistorHost + ", language=" + language + ", userAgent=" + userAgent + ", actions=";
		for(Action item : actions){
			r = r + item + "\n";
		}
		r = r + "\n\n";
		return r;
	}

}
