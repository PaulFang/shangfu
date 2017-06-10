package com.xianpin365.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.VistorAction;

public class PageViewRecordListener implements HttpSessionListener {
	
    public void sessionCreated(HttpSessionEvent event) {
    	event.getSession().setMaxInactiveInterval(3000);
    }

    public void sessionDestroyed(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        saveVistorAction(session);
    }
    
    private void saveVistorAction(HttpSession session){
    	Object obj = session.getAttribute(Consts.VISTOR_ACTION_TRACE_KEY);
        if(obj!=null && (obj instanceof VistorAction)){
        	VistorAction action = (VistorAction)obj;
        	System.out.println("========================================================================================================================");
        	System.out.println("====================" + action.getFormattedString());
        	System.out.println("========================================================================================================================");
        }
    }

}
