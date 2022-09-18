package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import FileUpload.FileService;
import FileUpload.FileServiceImpl;
import spring.AuthInfo;
import spring.Property;
import spring.PropertyDao;

@RequestMapping("/member")
@Controller
public class MemberController {
	static final int limit = 6;
	
	@Autowired
	FileService fs;
	
	@Autowired
	PropertyDao propertyDao;
	
	
	@RequestMapping("/Add_property")
	public String gopage() {
		return "/member/Add_property";
	}
	
	@RequestMapping("/Add")
	public String upload
	(MultipartHttpServletRequest mul, HttpSession session, HttpServletResponse response) throws IOException{
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		Property property = fs.fileProcess(mul);
		propertyDao.insert(property, id);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('매물이 등록되었습니다.'); " + "history.go(+1);</script>");
		out.flush(); 
		
		return "/home";
	}
	
	@RequestMapping("/List_property")
	public String list(Model model, HttpSession session) {
		List<Property> propertyList = new ArrayList<Property>();
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String host_id = authinfo.getId();
		propertyList = propertyDao.getMyProperties(host_id);	
		
		model.addAttribute("propertyList", propertyList);
			
		return "/member/List_property";
	}
	
	@RequestMapping("/DeleteProperty")
	public String Delete(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String host_id = authinfo.getId();
		String address = (String)request.getParameter("address");
		propertyDao.DeleteMyProperty(host_id, address);
		
		List<Property> propertyList = new ArrayList<Property>();
		propertyList = propertyDao.getMyProperties(host_id);
		
		model.addAttribute("propertyList", propertyList);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('매물이 삭제되었습니다.'); " + "history.go(+1);</script>");
		out.flush(); 

		return "/member/List_property";
	}
	
	@RequestMapping("/Like_property")
	public String ListLike(HttpSession session, Model model) {
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		List<Property> propertyList = propertyDao.getMyLikes(id);
		model.addAttribute("propertyList", propertyList);
		return "/member/Like_property";
	}
	
	@RequestMapping("/like")
	public String addLike(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		String address = (String)request.getParameter("address");
		List<Property> propertyList = propertyDao.getMyLikes(id);
		for(int i=0; i<propertyList.size(); i++	) {
			String tmp = propertyList.get(i).getAddress();
			if(tmp.equals(address)) {
				address = "중복";
				break;
			}
		}
		if(address.equals("중복")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 찜한 매물입니다.'); " + "history.go(-1);</script>");
			out.flush(); 
		}else {
			propertyDao.AddLike(id, address);
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('매물이 찜 리스트에 추가되었습니다.'); " + "history.go(-1);</script>");
			out.flush(); 
		}	
		return "redirect:/";
	}
	
	@RequestMapping("/DeleteLike")
	public String DeleteLike(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		AuthInfo authinfo = (AuthInfo)session.getAttribute("authInfo");
		String id = authinfo.getId();
		String address = (String)request.getParameter("address");
		propertyDao.DeleteLike(id, address);
		List<Property> propertyList = propertyDao.getMyLikes(id);
		model.addAttribute("propertyList", propertyList);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('매물이 찜 목록에서 삭제되었습니다.'); " + "history.go(+1);</script>");
		out.flush(); 

		return "/member/Like_property";
	}
	
}
