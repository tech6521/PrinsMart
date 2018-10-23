package kr.prinsmart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import kr.prinsmart.domain.CartVO;
import kr.prinsmart.service.CartService;

@Controller
@RequestMapping(value = "/") 
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Inject
    CartService cartService;
	
	
			// 1. 장바구니 추가
		    @RequestMapping(value= "insert.do", method = RequestMethod.POST)
		    public String insert(@ModelAttribute CartVO vo, HttpSession session) throws Exception{
		    	
		        
		       
		            cartService.insert(vo);
		        
		        return "redirect:/";
		    }
		    
		    
		    
		    @RequestMapping(value= "/listCart", method = RequestMethod.GET)
		    public String listCart(@RequestParam("user_id") String user_id, Model model) throws Exception{
		    	
		    	
		    	model.addAttribute("list", cartService.listCart(user_id));
		    	
		    	
		    	
		    	
		    	return "/listCart";
		    			
		    	
		    }
		    @RequestMapping(value= "/delete", method = RequestMethod.POST)
		    public String deleteCart(int cart_id) throws Exception {
		    		
		    		
		    		cartService.deleteCart(cart_id);
		    	
		    	return "redirect:/listCart";
		    }
		    
		    
}

		   	

