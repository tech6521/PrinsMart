package kr.prinsmart.controller;



import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;
import kr.prinsmart.service.UserService;

@Controller // 컨트롤러임을 명시
@RequestMapping(value = "/") 
public class UserController {
	
	@Inject   // 주입(심부름꾼) 명시
	private UserService service; // Service 호출을 위한 객체생성
	
	@RequestMapping("/Join") // GET 방식으로 페이지 호출
	public String JoinGET(Model model) throws Exception {
		return "Join";
	}



	@RequestMapping(value = "/regist", method = RequestMethod.POST) // POST방식으로 내용 전송

	  public String registPOST(@ModelAttribute UserVO user) throws Exception { // 인자값으로 REDIRECT 사용 

		service.regist(user); 

	    	   return "redirect:/"; 

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(@ModelAttribute("dto") LoginDTO dto) throws Exception {		
		
	}
	
	@RequestMapping(value="/loginPost", method = RequestMethod.POST)
	public void loginPost(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		UserVO vo = service.login(dto);
		
		if(vo == null) {
			return;
		}
		
		model.addAttribute("userVO", vo);
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {		
		Object obj = session.getAttribute("login");
		
		if (obj != null) {
				UserVO vo = (UserVO) obj;
				
				session.removeAttribute("login");
				session.invalidate();
				
				Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
				
				if (loginCookie != null) {
					loginCookie.setPath("/");
					loginCookie.setMaxAge(0);
					response.addCookie(loginCookie);
					
				}
		}
		
		return "redirect:/";
		
	}
}

