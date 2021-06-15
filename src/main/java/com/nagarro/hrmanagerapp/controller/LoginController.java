package com.nagarro.hrmanagerapp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.hrmanagerapp.dao.LoginDao;

@Controller
public class LoginController {
	private static final String INVALID = "Invalid User name and Password!  Please provide correct credentials";
	private static final String WRONG_ID_PASS = "wrong_id_pass";

	@Autowired
	private LoginDao loginDao;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String userName, @RequestParam("password") String passWord,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		boolean validateUser = loginDao.validateUser(userName, passWord);
		ModelAndView mv = new ModelAndView();
		if (validateUser) {
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			mv.setViewName("welcome");
			return mv;
		} else {

			mv.addObject(WRONG_ID_PASS, INVALID);
			mv.setViewName("index");
			return mv;
		}

	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		mv.setViewName("index");
		return mv;
	}

}
