package com.mkyong.helloworld.web;

import java.util.Map;

import org.hibernate.jdbc.util.FormatStyle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.helloworld.service.HelloWorldService;

@Controller
public class WelcomeController {

	private final Logger logger = LoggerFactory.getLogger(WelcomeController.class);
	private final HelloWorldService helloWorldService;

	@Autowired
	public WelcomeController(HelloWorldService helloWorldService) {
		this.helloWorldService = helloWorldService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {

		logger.debug("index() is executed!");

		model.put("title", helloWorldService.getTitle(""));
		model.put("msg", helloWorldService.getDesc());
		
		return "index";
	}

	@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {

		logger.debug("hello() is executed - $name {}", name);

		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		
		model.addObject("title", helloWorldService.getTitle(name));
		model.addObject("msg", helloWorldService.getDesc());
		
		return model;

	}
	
	@RequestMapping(value = "/kyungjoon")
	public ModelAndView kyungjoon() {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "고경준천재님");
		
		mav.setViewName("kyungjoon");
		
		return mav;

	}
	
	@RequestMapping(value = "/kyungjoon2")
	public ModelAndView kyungjoon2() {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "고경준천재님");
		
		mav.setViewName("kyungjoon2");
		
		return mav;

	}
	
	@RequestMapping(value = "/kyungjoon3")
	public ModelAndView kyungjoon3() {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "고경준천재님");
		
		mav.setViewName("kyungjoon3");
		
		return mav;

	}
	
	@RequestMapping(value = "/queryFormatter")
	public ModelAndView queryFormatter() {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "고경준천재님");
		
		mav.setViewName("kyungjoon2");
		
		String sql= "select * from sdkfsdlf where 1=1 and name='sdlkflsdk'";
		
		
		
	String formattedSQL = new FormatStyle(sql).format();
		
		
		
		return mav;

	}

}