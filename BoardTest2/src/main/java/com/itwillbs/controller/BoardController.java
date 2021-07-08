package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.BoardVO;
import com.itwillbs.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	// 서비스 객체 생성 => 주입
	@Inject
	private BoardService service;
	
	
	//http://localhost:8088/board/
	// 글쓰기 동작(get)
	@RequestMapping(value = "/regist",method = RequestMethod.GET)
	public void registGET() throws Exception{
		
		System.out.println("C : registGET()호출 ");
	}

	// 글쓰기 동작(get)
	@RequestMapping(value = "/regist",method = RequestMethod.POST)
	public String registPOST(BoardVO vo , RedirectAttributes rttr) throws Exception{
		
		System.out.println("C : registPOST()호출 ");
		
		System.out.println("C: 전달된 정보 - " + vo);
		service.regist(vo);
		
		System.out.println("C : 글쓰기 완료 ");

		//model.addAttribute("result", "success"); 
		rttr.addFlashAttribute("result", "success");
		// FlashAttribute를 사용하면 주소 줄에 표시가 안된다. 
		
		return "redirect:/board/listAll";
	}
	
	//리스트 페이지 (GET) 
	@RequestMapping(value = "/listAll" , method=RequestMethod.GET )
	public void listAllGET(@ModelAttribute("result")String result , Model model) throws Exception{
				
		System.out.println("C: listAllGET() 호출");
		
		
		model.addAttribute("listALL", service.listALL() ) ; 
		System.out.println("C : 전달 정보 "+ result);
	}
	
	
	@RequestMapping(value="/read" , method = RequestMethod.GET)
	public void readGET(@RequestParam("bno") int bno) throws Exception{
		
		// Model : 컨트롤러가 뷰에 정보를 전달하는 객체 ( Map의 형태로 저장) 
		
		// @ModelAttribute() : 컨트롤러가 뷰에 정보를 전달하기 위해서 사용하는 객체 
		// 함수의 인자로도 사용가능하고, 메서드 위에 사용하는 것도 가능하다. 
		// => DTO / VO 객체를 주로 사용 
		
		// @RequestParam : request.getParameter() 와 동일 
		
		System.out.println("C : readGET() 호출");
		// 전달 정보 bno 저장 
		System.out.println("C : bno = " + bno);
		
		// 서비스에 글 본문 내용을 가져오는 메소드 
		
		// 페이지 이동 
		// /board/read.jsp 페이지로 이동
	}
	
//	@RequestMapping(value="/read/{bno}" , method = RequestMethod.GET)
//	public String readGET(@PathVariable int bno) throws Exception{
//		System.out.println("C : readGET() 호출");
//		
//		// 전달 정보 bno 저장 
//		System.out.println("C : bno = " + bno);
//		
//		// 서비스에 글 본문 내용을 가져오는 메소드 
//		
//		// 페이지 이동 
//		// /board/read.jsp 페이지로 이동 
//		
//		return "/board/read"; 
//	}
	
	

	
	
	
	

}
