package kr.prinsmart.controller;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.domain.SearchCriteria;
import kr.prinsmart.service.ProductService;

 
@Controller
@RequestMapping("/sproduct/*")
public class SearchProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchProductController.class);
	
	@Inject  
	private ProductService service; 
	
	
		
	@RequestMapping(value = "/SearchProductList", method=RequestMethod.GET) 
	public void SearchProductList(@ModelAttribute("cri") ProductVO cri, Model model) throws Exception {
		logger.info("show productall list.....");
		logger.info(cri.toString());
		
		model.addAttribute("list", service.searchProduct(cri));
		
	}
}