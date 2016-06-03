package com.daeyang.gen;


import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.daeyang.gen.utl.PropertyUtil;



@Controller
public class LinkController {
	private static final Logger LOG = LoggerFactory.getLogger(LinkController.class);

	@RequestMapping(value="/m160602_1.do", method=RequestMethod.GET)
	public String m160602_1(Model model){
		String path = "m160602_1";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	
	@RequestMapping(value="/m160602_2.do",method=RequestMethod.GET)
	public String m160602_2(Model model){
		String path = "m160602_2";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	@RequestMapping(value="/m160602_3.do",method=RequestMethod.GET)
	public String m160602_3(Model model){
		String path = "m160602_3";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	@RequestMapping(value="/m160602_4.do",method=RequestMethod.GET)
	public String m160602_4(Model model){
		String path = "m160602_4";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	@RequestMapping(value="/m160602_5.do",method=RequestMethod.GET)
	public String m160602_5(Model model){
		String path = "m160602_5";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	@RequestMapping(value="/m160603_1.do",method=RequestMethod.GET)
	public String m160603_1(Model model){
		String path = "m160603_1";
		String titleParam = PropertyUtil.GetTitleByUrl(path);
		model.addAttribute("title", titleParam);
		return "link/"+path;
	}
	
	
	
	
	
	
	
	
	
}
