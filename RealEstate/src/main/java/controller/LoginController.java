package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.AuthInfo;
import spring.AuthService;
import spring.WrongIdPasswordException;
import spring.LoginCommand;
import spring.Property;
import spring.PropertyDao;

@Controller
public class LoginController {
	
	static final int limit = 6;
	
	@Autowired
	PropertyDao propertyDao;
	
    private AuthService authService;

    public void setAuthService(AuthService authService) {
        this.authService = authService;
    }
    
	@RequestMapping("/login")
	public String form(LoginCommand loginCommand, @CookieValue(value="REMEMBER", required=false) Cookie rCookie){
		if(rCookie !=null) {
			loginCommand.setId(rCookie.getValue());
			loginCommand.setRememberId(true);
		}
		return "/login";
	}
	
	@RequestMapping("/submit")
	public String submit(Model model, LoginCommand loginCommand, Errors errors, HttpSession session, HttpServletResponse response) throws IOException, SQLException {
		if(errors.hasErrors()) {
			return "/login";
		}
		try {
			AuthInfo authInfo = authService.authenticate(loginCommand.getId(), loginCommand.getPassword());
			session.setAttribute("authInfo", authInfo);
			
			Cookie rememberCookie = new Cookie("REMEMBER", loginCommand.getId());
			rememberCookie.setPath("/");
			
			if(loginCommand.isRememberId()) {
				rememberCookie.setMaxAge(60*60*24*30);
			}else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			
			String trading_type = "전체";
			String category = "전체";
			String location = "전체";

			int pageNum = 1;
		  
			int total_record = propertyDao.getListCount(trading_type, category, location);
			List<Property> propertyList = propertyDao.getSearchResult(pageNum, limit, trading_type, category, location);
		    
			int total_page;
			
			if (total_record % limit == 0){     
		     	total_page =total_record/limit;
		     	Math.floor(total_page);  
			}
			else{
			   total_page =total_record/limit;
			   Math.floor(total_page); 
			   total_page =  total_page + 1; 
			}		
		  
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("total_page", total_page);
			model.addAttribute("total_record", total_record);
			model.addAttribute("propertyList", propertyList);
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인했습니다.'); " + "history.go(+1);</script>");
			out.flush(); 
			
			return "/home";
		}catch (WrongIdPasswordException e) {
			errors.reject("idPasswordNotMatching");
			return "/login";
		}
	}
}
