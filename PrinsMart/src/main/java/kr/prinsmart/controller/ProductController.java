package kr.prinsmart.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.prinsmart.service.ProductService;

@Controller
@RequestMapping("/")
public class ProductController {

    @Inject
    ProductService productService;

    // 1. 상품 전체 목록
    @RequestMapping("/productList")
    public ModelAndView list(ModelAndView mav) {
        mav.setViewName("productList");
        mav.addObject("list", productService.listProduct());
        return mav;
    }

        // 2. 상품 상세보기
        @RequestMapping("/detail/{productId}")
        public ModelAndView detail(@PathVariable("productId") int productId, ModelAndView mav){
            mav.setViewName("productDetail");
            mav.addObject("vo", productService.detailProduct(productId));
            return mav;
        }
        
     // 2. 상품 선택보기
        @RequestMapping("/selectListProduct")
        public void select(@RequestParam("categoryid") int categoryid, Model model){
       
            model.addAttribute("list", productService.selectProduct(categoryid));
            
        }
    }


