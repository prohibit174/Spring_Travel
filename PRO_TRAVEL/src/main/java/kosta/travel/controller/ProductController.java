package kosta.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public String register() {
				logger.info("register...");
			return "product/register";
	}
	
}
