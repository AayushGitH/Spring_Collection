package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PathController 
{
	@RequestMapping("/user/{userid}/{username}")
	public String getUserDetail(@PathVariable("userid") int userid, @PathVariable("username") String username)
	{
		System.out.println(userid);
		System.out.println(username);
		Integer.parseInt(username); // Calls exceptionHandlerNumber method
		
		// String str = null;
		// int val = str.charAt(0); // Calls exceptionHandlerNull method
		return "userview";
	}
	
	
	/*
	 * @ExceptionHandler(value = NumberFormatException.class) public String
	 * exceptionHandlerNumber(Model m) {
	 * m.addAttribute("msg","Number format exception is occurred"); return
	 * "errorpage"; }
	 * 
	 * @ExceptionHandler(value = NullPointerException.class) public String
	 * exceptionHandlerNull(Model m) {
	 * m.addAttribute("msg","Null format exception is occurred"); return
	 * "errorpage"; }
	 */

}
