package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.AuthInfo;
import spring.Message;
import spring.MessageDao;
import spring.Property;
import spring.PropertyDao;

@Controller
public class MessageController {

	@Autowired
	PropertyDao propertyDao;
	
	@Autowired
	MessageDao mDao;
	
	@RequestMapping("/sendMessage")
	public String sendMessage(HttpSession session, HttpServletRequest request, HttpServletResponse response, Message message) throws IOException {
		String address = request.getParameter("address");
		Property property =propertyDao.getByAddress(address);
		message.setAddress(address);
		message.setHost_id(property.getHost_id());
		message.setPhoto(property.getPhoto());
		mDao.insert(message);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('집주인에게 메시지를 보냈습니다.'); " + "history.go(-1);</script>");
		out.flush(); 
		
		return "/property_details";
	}
	
	@RequestMapping("/member/Messages")
	public String ListMessages(HttpSession session, Model model) throws IOException {
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		
		List<Message> messages = mDao.getMyMessages(id);
		
		model.addAttribute("messages", messages);
		
		return "/member/Messages";
	}
	
	@RequestMapping("/member/deleteMessage")
	public String deleteMessage(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response, Message message) throws IOException {
		String address = request.getParameter("address");
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		mDao.DeleteMessage(id, address);
		
		List<Message> messages = mDao.getMyMessages(id);
		model.addAttribute("messages", messages);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('메시지를 삭제했습니다.'); " + "history.go(+1);</script>");
		out.flush(); 
		
		return "/member/Messages";
	}
}
