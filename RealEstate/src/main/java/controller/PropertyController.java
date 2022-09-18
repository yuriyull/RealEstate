package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.Message;
import spring.Property;
import spring.PropertyDao;

@Controller
public class PropertyController {
	
	@Autowired
	PropertyDao propertyDao;

	@RequestMapping("/property_details")
	public String Detail(Model model, HttpServletRequest request, Message message) {
		String address = request.getParameter("address");
		Property property = propertyDao.getByAddress(address);
		model.addAttribute("property",property);
		
		return "/property_details";
	}
}
