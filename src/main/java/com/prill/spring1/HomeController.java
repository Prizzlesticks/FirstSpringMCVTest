package com.prill.spring1;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	String text = "abc"; 
	String number; 

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model, 
			HttpServletRequest request) {
		String[] fruits = request.getParameterValues("fruit");
		
		model.addAttribute("pizza", request.getParameter("pizza"));
		
		model.addAttribute("fruits", fruits);
		
		return "order";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/enroll", method = RequestMethod.POST)
	public String enroll(Model model, 
			HttpServletRequest request) {
	
		model.addAttribute("fn", request.getParameter("firstname"));
		model.addAttribute("ln", request.getParameter("lastname"));
		model.addAttribute("em", request.getParameter("email"));
		model.addAttribute("age", request.getParameter("age"));
		model.addAttribute("phone", request.getParameter("phone"));
		model.addAttribute("program", request.getParameter("program"));
		model.addAttribute("date", request.getParameter("date"));
		
		return "home";
	}
	
}
