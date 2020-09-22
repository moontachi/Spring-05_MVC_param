package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("person/input")
	public String result(Model model,HttpServletRequest request) {//request를 받는 코드를 작성해줘야 객체를 사용 할 수 있다.
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		model.addAttribute("name",name+"씨~");
		model.addAttribute("age",age+"살");
	
		return "person/result";
	}
	
	@RequestMapping("form")
		public String form() {
			return "person/personInput";
		}
	
	@RequestMapping(value = "person/join1",method = RequestMethod.GET)//get방식 요청할때만 이매서드가 실행 된다.
		public String join1(Model model,HttpServletRequest request) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String addr = request.getParameter("addr"); 
//			System.out.println("id :" + id);
//			System.out.println("pw :" + pw);
//			System.out.println("name :" + name);
//			System.out.println("addr :" + addr);
//			System.out.println("join1()");
			model.addAttribute("id",id);
			model.addAttribute("pw",pw);
			model.addAttribute("name",name);
			model.addAttribute("addr",addr);
			
			return "person/personView1";
		}
	
	@RequestMapping(value="person/join2")
	public String join2(@RequestParam("id") String id,
						@RequestParam("pw") String pw,
						@RequestParam("name") String name,
						@RequestParam("addr") String addr,
						Model model) {
		 
		System.out.println("id:" + id);
		System.out.println("pw:" + pw);
		System.out.println("name:" + name);
		System.out.println("addr:" + addr);
		
		Person per = new Person(id,pw,name,addr); 
		model.addAttribute("per", per);
		
		return "person/personView2"; 
	}
	
	@RequestMapping(value="person/join3")
	public String join3(Person p) {//개꿀 
		//Person p : command 객체
		System.out.println("p.getId() : " +p.getId());
		/*
		 커맨드객체는 아래와 같은 의미를 가지고 있다. 자동 객체,세터 설정
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr"); 
		Person per = new Person(id,pw,name,addr);
		p.setId(id);
		p.setPw(pw);
		p.setName(name);
		p.setAddr(addr);
		*/
		
		return "person/personView3";
	}
	
	@RequestMapping(value="person/join4")
	public String join4( @ModelAttribute("abcd") Person p) { //별칭지정  @ModelAttribute("abcd")
		System.out.println("p.getId() : " +p.getId());
		return "person/personView4";
	}
}
	
	
	
	

