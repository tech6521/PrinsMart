package kr.prinsmart.controller;

import java.util.List;

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
	
	@RequestMapping("/orderList") 
	public String orderList(@ModelAttribute OrderVO vo, @RequestParam("user_id") String user_id, Model model) throws Exception {
		model.addAttribute("list", Service.listCart(user_id));
		
		model.addAttribute(Service1.selectUser(user_id));
		
		
		
		
		return "orderList";
	}
	
	@RequestMapping(value = "/pay",method=RequestMethod.GET)
	public void payGET(OrderVO vo, Model model) throws Exception {
		logger.info("register get....");
	}
	
	
	
	 	@RequestMapping(value= "/spay", method = RequestMethod.POST)
	    public String payPOST(@ModelAttribute OrderVO vo, HttpSession session) throws Exception{
	    	
	        
	 			logger.info(vo.toString());
	            Service.order(vo);
	            
	 			
	        
	        return "redirect:/pay";
	    }

}
