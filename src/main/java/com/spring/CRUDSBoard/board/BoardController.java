package com.spring.CRUDSBoard.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "list";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOk(BoardVO vo) {
		if(boardService.insertBoard(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}

	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOk(BoardVO vo) {
		if(boardService.updateBoard(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if(boardService.deleteBoard(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../list";
	}
	
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String testForm() {
		return "test1";
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.POST)
	public String test2Form() {
		return "test2";
	}
	
	@RequestMapping(value = "/test3", method = RequestMethod.POST)
	public String test3Form() {
		return "test3";
	}
	
	@RequestMapping(value = "/test4", method = RequestMethod.POST)
	public String test4Form() {
		return "test4";
	}
	
	@RequestMapping(value = "/test5", method = RequestMethod.POST)
	public String test5Form() {
		return "test5";
	}
	
	@RequestMapping(value = "/test6", method = RequestMethod.POST)
	public String test6Form() {
		return "test6";
	}
	
	@RequestMapping(value = "/test7", method = RequestMethod.POST)
	public String test7Form() {
		return "test7";
	}
	
	@RequestMapping(value = "/test8", method = RequestMethod.POST)
	public String test8Form() {
		return "test8";
	}
	
	@RequestMapping(value = "/test9", method = RequestMethod.POST)
	public String test9Form() {
		return "test9";
	}
	
	@RequestMapping(value = "/test10", method = RequestMethod.POST)
	public String test10Form() {
		return "test10";
	}
	
	@RequestMapping(value = "/testResult", method = RequestMethod.POST)
	public String testResultForm() {
		return "testResult";
	}
	
	
}
