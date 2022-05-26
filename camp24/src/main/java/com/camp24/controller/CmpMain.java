package com.camp24.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class CmpMain implements CmpInter {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String view = "/main";
		return view;
	}

}