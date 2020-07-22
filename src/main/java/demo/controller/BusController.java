package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import demo.model.Bus;

import demo.service.BusService;

@Controller
public class BusController {
	
@Autowired

    BusService busService;
@RequestMapping("/Bookbuses")
public ModelAndView showbuses()
{
	List<Bus> plist=busService.getAllbus();
	return new ModelAndView("Showbuses","plist",plist);
	
}
@RequestMapping("/Book")
public ModelAndView showbus()
{
	return new ModelAndView("bus","command",new Bus());
}
@RequestMapping("/addbus")
public ModelAndView addbus(@RequestParam("id")int busid,@RequestParam("name")String name,@RequestParam("date") int date,@RequestParam("placefrom")String placefrom,@RequestParam("placeto")String placeto)
{
	Bus product= new Bus(busid,name,date,placefrom,placeto);
	busService.addbus(product);
	return new ModelAndView("redirect:/Bookbuses");
}
	
	}
	
	


