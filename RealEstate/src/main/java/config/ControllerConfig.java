package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.LoginController;
import controller.LogoutController;
import controller.MapController;
import controller.MemberController;
import controller.MessageController;
import controller.PropertyController;
import controller.RegisterController;
import controller.SearchController;
import spring.AuthService;
import spring.MemberDao;
import spring.MemberRegisterService;


@Configuration
public class ControllerConfig {

	@Autowired
	private MemberRegisterService memberRegSvc;
	@Autowired
	private AuthService authService;
	@Autowired
	private MemberDao memberDao;
	
	@Bean
	public RegisterController registerController() {
		RegisterController controller = new RegisterController();
		controller.setMemberRegisterService(memberRegSvc);
		return controller;
	}

	@Bean
	public LoginController loginController() {
		LoginController controller = new LoginController();
		controller.setAuthService(authService);
		return controller;
	}
	
	@Bean
	public LogoutController logoutController() {
		return new LogoutController();
	}

	@Bean 
	public MemberController memberController() { 
		return new MemberController();
	}
	
	@Bean 
	public SearchController searchController() {
		return new SearchController();
	}
	
	@Bean
	public MapController mapController() {
		return new MapController();
	}
	
	@Bean
	public PropertyController propertyController() {
		return new PropertyController();
	}
	@Bean
	public MessageController messageController() {
		return new MessageController();
	}
}
