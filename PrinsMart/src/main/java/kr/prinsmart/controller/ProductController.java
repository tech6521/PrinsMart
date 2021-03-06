package kr.prinsmart.controller;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.prinsmart.service.ProductService;

 
@Controller 
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Inject  
	private ProductService service; 
	
	
		
	@RequestMapping(value = "/allProductList", method=RequestMethod.GET) 
	public void allProductList(Model model) throws Exception {
		logger.info("show productall list.....");
		
		model.addAttribute("list", service.listProduct());
		
	}
	
	
	
	@RequestMapping(value = "/productDetail",method=RequestMethod.GET)
    public void detail(@RequestParam("product_id") int product_id, Model model) throws Exception{
        
		model.addAttribute("detail", service.detailProduct(product_id));
     }
	 
	 @RequestMapping("/selectListProduct")
     public void select(@RequestParam("category_id") int category_id, Model model) throws Exception{
    
         model.addAttribute("select", service.selectProduct(category_id));
         
     }


}


