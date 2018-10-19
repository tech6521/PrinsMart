package kr.prinsmart.controller;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.prinsmart.domain.ProductVO;

import kr.prinsmart.service.ProductService;

 
@Controller // 컨트롤러임을 명시
public class ProductController {
	
	@Inject   // 주입(심부름꾼) 명시
	private ProductService service; // Service 호출을 위한 객체생성
	
	
	@RequestMapping("/allProductList") 
	public void allProductList(Model model) throws Exception {
		
		List<ProductVO> list = service.listProduct();
		model.addAttribute("list", list);
		
	}
	
	 @RequestMapping("/{product_id}")
     public ModelAndView detail(@PathVariable int product_id, ModelAndView mav) throws Exception{
         mav.setViewName("productDetail");
         mav.addObject("vo", service.detailProduct(product_id));
         return mav;
         
     }
	 
	 @RequestMapping("/selectListProduct")
     public void select(@RequestParam("category_id") int category_id, Model model) throws Exception{
    
         model.addAttribute("select", service.selectProduct(category_id));
         
     }


}


