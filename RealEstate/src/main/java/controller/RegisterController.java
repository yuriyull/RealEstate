package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import spring.DuplicateMemberException;
import spring.MemberRegisterService;
import spring.RegisterRequest;
import spring.LoginCommand;

@Controller
public class RegisterController {
	
	private MemberRegisterService memberRegisterService;
	
	public void setMemberRegisterService(
			MemberRegisterService memberRegisterService	) {
		this.memberRegisterService = memberRegisterService;
	}
	
	@RequestMapping("/join")
	public String GoJoin(RegisterRequest regReq){
		return "/join";
	}
	
	@RequestMapping("/register")
	public String AddMember(RegisterRequest regReq, LoginCommand loginCommand, Errors errors, HttpServletResponse response) throws IOException {
		if(errors.hasErrors())
			return "/join";
		try {
			memberRegisterService.regist(regReq);
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입이 완료되었습니다.'); " + "history.go(+1);</script>");
			out.flush(); 
			
			return "/login";
		}catch(DuplicateMemberException ex) {
			errors.rejectValue("email", "duplicate");
			return "/join";
		}
	}
	
}
