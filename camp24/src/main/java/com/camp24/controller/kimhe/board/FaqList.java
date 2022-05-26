package com.camp24.controller.kimhe.board;

import java.util.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.camp24.controller.*;
import com.camp24.dao.*;
import com.camp24.dao.kimhe.FaqDao;
import com.camp24.vo.*;
import com.camp24.util.*;

public class FaqList implements CmpInter {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String view = "/board/faqList";
		
		int nowPage = 1;
		String spage = req.getParameter("nowPage");
		if(spage != null) {
			nowPage = Integer.parseInt(spage);
		}
		
		FaqDao bDao = new FaqDao();
		int total = bDao.getTotalCount();
		
		PageUtil page = new PageUtil(nowPage, total);
		
		ArrayList<BoardVO> list = bDao.getBoardList(page);
		
		req.setAttribute("LIST", list);
		req.setAttribute("PAGE", page);
		
		return view;
	}

}