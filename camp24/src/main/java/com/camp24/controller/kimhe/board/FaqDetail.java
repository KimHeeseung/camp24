package com.camp24.controller.kimhe.board;

import java.io.*;

import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.camp24.controller.*;
import com.camp24.dao.*;
import com.camp24.dao.kimhe.FaqDao;
import com.camp24.vo.*;
/**
 * 이 클래스는 게시글 상세보기 요청을 처리하는 클래스
 * @author	전은석
 * @since	2022.05.24
 * @version v.1.0
 * 
 * 			작업이력 ]
 * 				2022.05.24	-	담당자 : 전은석
 * 								내  용 :
 * 										클래스제작
 *
 */
public class FaqDetail implements CmpInter {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String view = "/board/faqDetail";
		
		String spage = req.getParameter("nowPage");
		String sno = req.getParameter("bno");
		int bno = 0;
		if(sno != null) {
			bno = Integer.parseInt(sno);
		}
		
		FaqDao bDao = new FaqDao();
		BoardVO bVO = bDao.getBoardDetail(bno);
		
		System.out.println("********** cont list.size() : " + bVO.getList().size());
		
		req.setAttribute("DATA", bVO);
		req.setAttribute("LIST", bVO.getList());
		
		return view;
	}

}