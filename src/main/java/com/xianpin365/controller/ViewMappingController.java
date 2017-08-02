package com.xianpin365.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xianpin365.service.IProductService;

@Controller
public class ViewMappingController {

	@Resource
	private IProductService productService;

	@RequestMapping(value = { "/index", "/managerlogin","/controller"
			 })
	public String doDirectRequest(HttpServletResponse response, HttpServletRequest request) {
		String reqUri = request.getRequestURI();
		return reqUri;
	}
	
	@RequestMapping(value = { "/trylogin" }, method = RequestMethod.POST)
	public @ResponseBody String login(HttpServletRequest request, String user, String password) {
		if("".equals(user) &&
			"".equals(password)){
			request.getSession().setAttribute("admin", true);
			return "OK";
		}
		return null;
	}
	
	@RequestMapping(value = { "/ueditor" }, method = RequestMethod.GET)
	public String get(HttpServletResponse response, HttpServletRequest request) {
		String reqUri = request.getRequestURI();
		return reqUri;
	}
	
	@RequestMapping(value = { "/edit/selectpage" })
	public String getSelectPage(HttpServletResponse response, HttpServletRequest request) {
		return "edit_page_choose";
	}
	
	@RequestMapping(value="/fileupload", method=RequestMethod.POST)
	@ResponseBody Map<String, String> processUpload(@RequestParam MultipartFile fileupload, Model model) throws IOException {
		
		InputStream is = fileupload.getInputStream();
		File f = new File("C:\\Temp\\0.jpg");
		FileUtils.copyInputStreamToFile(is, f);
		 
		//返回结果信息(UEditor需要)
        Map<String,String> map = new HashMap<String,String >();

        //是否上传成功
        map.put("state", "SUCCESS");

        //现在文件名称
        map.put("title", "0.jgp");

        //文件原名称 
        map.put("original", "0.jpg");

        //文件类型 .+后缀名
        map.put("type", ".jpg");

        //文件路径
        map.put("url", "/");

        //文件大小（字节数）
        map.put("size", "300");

       return map;
	}
	
	// FYI:http://www.cnblogs.com/mumuxinfei/p/5363909.html
	
	/** 
     * uploadFile:ueditor上传附件. <br/> 
     * @author lcma 
     * @param model Model 
     * @param file MultipartFile 
     * @param request HttpServletRequest 
     * @param response HttpServletResponse 
     * @return 
     * @throws Exception 
     * @since JDK 1.6 
     */  
//    @RequestMapping(value="/fileupload")  
    public void uploadFile(@RequestParam(value = "file", required = false) MultipartFile file,   
            HttpServletRequest request,HttpServletResponse response){ 
    	
    	System.out.println("file");
    	
       /* //返回对象  
        RequestResultBean result = new RequestResultBean();  
        Attachment attach = new Attachment();  
        //获取用户信息  
        User user = WebUtils.getUserInfo(request);  
        //获取文件保存后面的动态路径  
        String backPath = this.getPath();  
        //文件保存的完整路径  
        String path = ResourceBean.HEAD_PATH + backPath;   
        //获取文件名  
        String fileName = file.getOriginalFilename();   
        //获取转换后的uuid文件名  
        String UuidFileName = this.getUUIDFileName(fileName);  
        //完善附件对象信息  
        attach.setCreateTime(new Date());  
        attach.setSize(file.getSize());  
        attach.setName(fileName);  
        attach.setExt(this.getExtName(fileName, '.'));  
        attach.setRealPath(backPath + "/" + UuidFileName);  
        attach.setCreateUser(user);  
        this.checkFileType(attach, fileName);  
           
        File targetFile = new File(path, UuidFileName);  
        //创建文件夹  
        if(!targetFile.exists()){    
            targetFile.mkdirs();    
        }    
        Map<String,String> map = new HashMap<String,String>();  
        try {    
            //上传附件  
            file.transferTo(targetFile);  
            //保存附件信息  
            attachmentService.save(attach);  
            map.put("state", "SUCCESS");  
            map.put("url", ResourceBean.DOWNLOAD_URL + attach.getId());  
            map.put("title", "");  
            map.put("original","");  
        } catch (Exception e) {  
            LOGGER.error("upload error:", e);  
            map.put("state", "上传失败");  
        }    
        try {  
            response.setCharacterEncoding("GBK");  
            response.getWriter().write(JacksonUtil.toJSon(map)); //因为上传不能使用@ResponseBody，因此用原生的response来传值到前台。  
        } catch (IOException e) {  
            LOGGER.error("upload error:", e);  
            return result;  
        }  
        return null;  */
    }  

}
