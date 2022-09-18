package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.MapDao;
import spring.MapDto;
import spring.Property;
import spring.PropertyDao;

@Controller
public class MapController {
	@Autowired
	PropertyDao propertyDao;
	@Autowired
	MapDao mapDao;
	
	@RequestMapping("/map")
	public String goMap(Model model, HttpServletRequest request){
		List<Property> PropertyList = propertyDao.getPropertyList();
		List<MapDto> Map_property = new ArrayList<MapDto>();
		
		for(int i=0;i<PropertyList.size();i++) {
			MapDto mapDto = new MapDto();
			Map<String, String> map =mapDao.getGeoDataByAddress(PropertyList.get(i).getAddress());
			String lat = map.get("lat").toString();
			String lng = map.get("lng").toString();
			
			mapDto.setAddress(PropertyList.get(i).getAddress());
			mapDto.setLat(lat);
			mapDto.setLng(lng);
			Map_property.add(i, mapDto);
			
		}
		model.addAttribute("Map_property", Map_property);
		request.setAttribute("Map_property", Map_property);
		return "/map";
	}
}
