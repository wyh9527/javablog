package blog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blog.entity.User;
import blog.service.UserDaoService;
import blog.service.impl.UserDaoServiceImpl;
@Controller
public class UserController {
	@Autowired
	 private UserDaoService  service = new UserDaoServiceImpl();
    /**
     * @param user
     * @param request
     * @return
     * @throws IOException 
     * @throws ServletException 
     */
	@RequestMapping("/login")
    public String login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
           request.setCharacterEncoding("UTF-8");   
           String username = request.getParameter("username");
           String password = request.getParameter("password");
		                        User user = new User();
		                        user.setUsername(username);
		                        user.setPassword(password);
		                         User flag=null;
		                          flag = service.login(user);
                	if(flag==null){
                		request.setAttribute("message", "用户名或密码错误，请从新输入");   
                		return "login.jsp";
                	}else{	
                		HttpSession session = request.getSession();
            			session.setAttribute("user", flag);
            			return "/admin/adminWelcome.jsp";
                	}
		
    	
    }
	
          
		
    	
    }

