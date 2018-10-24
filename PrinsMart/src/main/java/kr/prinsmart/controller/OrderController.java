package kr.prinsmart.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.service.CartService;

@Controller
@RequestMapping("/")
public class OrderController {
	
private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Inject
    CartService Service;
	
	@RequestMapping("/orderList") // GET 방식으로 페이지 호출
	public String orderList(@ModelAttribute UserVO vo, @RequestParam String user_id, Model model) throws Exception {
		model.addAttribute("list", Service.listCart(user_id));
		model.addAttribute(vo);
		
		return "orderList";
	}

}
