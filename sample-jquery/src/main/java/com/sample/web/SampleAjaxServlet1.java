package com.sample.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ajax1")
public class SampleAjaxServlet1 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		//String을 key로 list가 값으로 반환됨
		Map<String, List<String>> map = new HashMap<String, List<String>>();
		
			List<String> list1 = List.of("이것이 자바다", "자바의 정석", "혼자 공부하는 자바");
			List<String> list2 = List.of("해커스 토익 기출", "ETS 토익 기출 문제집", "해커스 토익 스타트");
			List<String> list3 = List.of("미드나잇 라이브러리", "완전한 행복", "달러구트 꿈 백화점");
				
			map.put("기술", list1);
			map.put("외국어", list2);
			map.put("소설", list3);
			
			//요청 파라미터 값 조회하기
			String genre = req.getParameter("genre");
			//클라이언트가 요청한 데이터 조회하기
			List<String> data = map.get(genre);
			//응답 데이터를 CSV형식으로 변환하기
			String csvText = StringUtils.join(data,",");
			
			//응답데이터 보내기
			//Plain Text 형식의 응답 데이터 보내기
			res.setContentType("text/plain; charset=utf-8");
			PrintWriter out = res.getWriter();
			
			out.write(csvText);
			out.flush();
			out.close();
	}
}
