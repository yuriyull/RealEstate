package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import spring.Property;
import spring.PropertyDao;

@Controller
public class SearchController {
	static final int limit = 6;
	
	@Autowired
	PropertyDao propertyDao;
	
	@RequestMapping("/home")
	public String List(Model model) throws SQLException {
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

		return "/home";
	}
	

   @RequestMapping("/Search")
   public String Search(Model model, HttpServletRequest request) throws SQLException {
	   
      String trading_type = request.getParameter("trading-types");     
      String category = request.getParameter("building-types");
      String location = request.getParameter("select-city");
      
      if(request.getParameter("trading-types")==null||(request.getParameter("trading-types"))=="") {
    	  trading_type = "전체";
      }
      if(request.getParameter("building-types")==null||(request.getParameter("building-types"))=="") {
    	  category = "전체";
      }
      if(request.getParameter("select-city")==null||(request.getParameter("select-city"))=="") {
    	  location = "전체";
      }

      int pageNum = 1;
      
      if(request.getParameter("pageNum")!=null)
			pageNum=Integer.parseInt(request.getParameter("pageNum"));
      
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
		return "/home";
   }
	   

	
}
