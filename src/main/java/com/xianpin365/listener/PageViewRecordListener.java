package com.xianpin365.listener;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.IPInfo;
import com.xianpin365.domain.VistorAction;
import com.xianpin365.util.JsonUtil;

public class PageViewRecordListener implements HttpSessionListener {
	
	public static final String URL_IP_QUERY = "http://ip.taobao.com//service/getIpInfo.php";
	
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
        	String json = queryIpInfo(URL_IP_QUERY, action.getVistorHost());
        	Object item = JsonUtil.getObject(json, IPInfo.class);
        	IPInfo info = (item==null) ? null : (IPInfo)item;
        	
        	System.out.println("========================================================================================================================");
        	System.out.println("====================" + action.getFormattedString());
        	
        	System.out.println("vistor ip info : " + queryIpInfo(URL_IP_QUERY, "ip="+ action.getVistorHost()));
        	System.out.println("========================================================================================================================");
        
        }
    }

    // http://ip.taobao.com//service/getIpInfo.php?ip=123.123.123.123
    public static String queryIpInfo(String url, String param) {
        String result = "";
        BufferedReader in = null;
        try {
            String urlNameString = url + "?" + param;
            URL realUrl = new URL(urlNameString);
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 建立实际的连接
            connection.connect();
            // 获取所有响应头字段
            //Map<String, List<String>> map = connection.getHeaderFields();
            // 遍历所有的响应头字段
/*            for (String key : map.keySet()) {
                System.out.println(key + "--->" + map.get(key));
            }*/
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return result;
    }

    
}
