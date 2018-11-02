package kr.prinsmart.controller;
 import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.domain.Criteria;
import kr.prinsmart.domain.PageMaker;
import kr.prinsmart.domain.SearchCriteria;
import kr.prinsmart.service.BoardService;
 //...306p.
 @Controller
@RequestMapping("/sboard/*")//...306p.
public class SearchBoardController {
 	  private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);
 	  @Inject
	  private BoardService service;
	  
	  //...306p.
	  //...108p. SearchCriteria를 @ModelAttribute를 사용하기 때문에 listPage.jsp에 자동으로 전달됨.
	  @RequestMapping(value = "/list", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
 	    logger.info(cri.toString());
 	    model.addAttribute("list", service.listSearchCriteria(cri));//...261p.
 	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
 	    pageMaker.setTotalCount(service.listSearchCount(cri));//...280p.service.countBno(cri)
 	    model.addAttribute("pageMaker", pageMaker);
	    
	  }
	  
	  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
		public void modifyGet(int bno,@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			
			
			model.addAttribute(service.read(bno));
		}
		
		@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
		public String modifyPOST(BoardVO board,SearchCriteria cri, RedirectAttributes rttr) throws Exception {
			logger.info("mod post.......");
			
			
			service.update(board);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());
			
			rttr.addFlashAttribute("msg", "success");
			
			logger.info(rttr.toString());
			
			return "redirect:/sboard/list";
			
		}
	  
	  
	  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
		public void read(@RequestParam("bno") int bno,@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			
			
			model.addAttribute(service.read(bno));
		}
	  
	  
	  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
		public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
			
			service.delete(bno);
			
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());
			
			rttr.addFlashAttribute("msg", "success");
			
			return "redirect:/board/listPage";
			
		}
	  
	  
	  @RequestMapping(value = "/register", method = RequestMethod.GET)
		public void registerGET(BoardVO board, Model model) throws Exception {
			logger.info("register get.....");
		}
		
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
			logger.info("register Post.....");
			logger.info(board.toString());
			
			service.regist(board);
			
			rttr.addFlashAttribute("msg", "success");
			
			return "redirect:/sboard/list";
		}
 }