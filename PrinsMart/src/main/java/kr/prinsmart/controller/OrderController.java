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

import kr.prinsmart.domain.OrderVO;
import kr.prinsmart.service.CartService;
import kr.prinsmart.service.UserService;

@Controller
@RequestMapping("/")
public class OrderController {
	
private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Inject
    CartService Service;
	@Inject
	UserService Service1;
	
	@RequestMapping("/orderList") // GET 방식으로 페이지 호출
	public String orderList(@RequestParam("user_id") String user_id, Model model) throws Exception {
		model.addAttribute("list", Service.listCart(user_id));
		
		model.addAttribute(Service1.selectUser(user_id));
		
		
		
		
		return "orderList";
	}
	
	
	 	@RequestMapping(value= "pay", method = RequestMethod.POST)
	    public String insert(@ModelAttribute OrderVO vo, HttpSession session) throws Exception{
	    	
	        
	       
	            Service.insert(vo);
	        
	        return "redirect:/";
	    }

}
