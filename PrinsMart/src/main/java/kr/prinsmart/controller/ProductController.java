package kr.prinsmart.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
}