package kr.prinsmart.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.prinsmart.domain.UserVO;
import kr.prinsmart.service.UserService;

@Controller
@RequestMapping(value = "/") 
public class MyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Inject
    UserService Service;
	
	
	@RequestMapping(value = "/MyUser",method=RequestMethod.GET)
	public void MyUserGET(Model model) throws Exception {
		logger.info("MyUser get....");
	}
	
	@RequestMapping(value = "/MyUser",method=RequestMethod.POST)
	public String MyUserPOST(Model model, HttpSession session) throws Exception {
		UserVO uservo  = (UserVO) session.getAttribute("login");
		String user_id = uservo.getId();
		UserVO vo = Service.selectUser(user_id);
		model.addAttribute("vo", vo);
		System.out.println(user_id);
		logger.info("MyUser post....");
		
		return "MyUser";
	}
	
	@RequestMapping(value = "/userModify",method=RequestMethod.GET)
	public void modifyGET(Model model, HttpSession session) throws Exception {
		
		UserVO uservo  = (UserVO) session.getAttribute("login");
		String user_id = uservo.getId();
		UserVO vo = Service.selectUser(user_id);
		model.addAttribute("vo", vo);
		System.out.println(user_id);
		logger.info("userModify get....");
		
		
	}
	
	@RequestMapping(value = "/userModify",method=RequestMethod.POST)
	public String modifyPOST(UserVO vo,Model model, HttpSession session) throws Exception {
		
		vo = Service.updateUser(vo);
		model.addAttribute("vo", vo);
		
		
		logger.info("MyUser post....");
		
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/userOut",method=RequestMethod.POST)
	public String userOutPOST(Model model, HttpSession session) throws Exception {
		logger.info("userOut post....");
		UserVO uservo  = (UserVO) session.getAttribute("login");
		String id = uservo.getId();
		
	
		
		return "redirect:/";
	}
}