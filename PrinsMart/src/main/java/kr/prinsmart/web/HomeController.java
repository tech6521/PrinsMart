package kr.prinsmart.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
    UserService Service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@ModelAttribute UserVO user, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		model.addAttribute(user);
		
		
		
		
		
		return "home";
	}
	
	
	
	
	
	
	@RequestMapping("/MyPage")
	public String MyPage(Model model,HttpSession session) throws Exception {
		UserVO uservo  = (UserVO) session.getAttribute("login");
		String user_id = uservo.getId();
		UserVO vo = Service.selectUser(user_id);
		model.addAttribute("vo", vo);
		System.out.println(user_id);
		return "MyPage";
	}
	
	@RequestMapping("/ServiceCenter")
	public String ServiceCenter(@ModelAttribute UserVO user, Model model) throws Exception {		
		
		model.addAttribute(user);
		return "ServiceCenter";
	}
	
	
	
}
