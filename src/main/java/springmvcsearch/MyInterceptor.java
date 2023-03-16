package springmvcsearch;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MyInterceptor extends HandlerInterceptorAdapter 
{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("This is preHandler method");
		String name = request.getParameter("user");
		if(name.startsWith("A"))
		{
			response.setContentType("text/html");
			response.getWriter().println("<h1>Invalid username Try again with the intercept url</h1>");
			return false;
		}
		return true;
	}
	 
}
