package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InterceprtorsController 
{
	@RequestMapping("/intercept")
	public String interceptormethod()
	{
		return "intercept";
	}
	
	@RequestMapping("/interceptform")
	public String preinterecptmethod(@RequestParam("user") String name, Model m)
	{
		System.out.println("Name is " + name);
		m.addAttribute("name",name);
		return "welcome";
	}
}
