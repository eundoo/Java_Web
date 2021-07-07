package com.sample.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ajax2")
public class SampleAjaxServlet2 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		List<Book> books = List.of(
				new Book(100, "미드나잇 라이브러리", "매트헤이그", "인풀루엔셀", 14220),
				new Book(200, "조국의 시간", "조국", "한길사", 15300),
				new Book(300, "완전한 행복", "정유정", "은행나무", 14220),
				new Book(400, "부의 시나리오", "오건영", "페이지2", 16200),
				new Book(500, "세금내는 아이들", "옥효진", "한국경제신문사", 12600),
				new Book(600, "흔한남매 8", "흔한남매", "미래엔 아이세움", 12150),
				new Book(700, "청사과 낙원", "청낙원", "위즈덤 하우스", 37000)
		);		
		
		//요청 파라미터 값 획득하기 <-- 모든 책정보를 응답으로 보내기 때문에 파라미터값 없음
		
		//데이터를 json형식으로 변환하기
		Gson gson = new Gson();
		String jsonText = gson.toJson(books);
		
		//json 형식의 텍스트를 응답데이터로 보내기
		res.setContentType("application/json; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.write(jsonText);
		out.flush();
		out.close();
	}
	
	public class Book {
		int no;
		String title;
		String writer;
		String publisher;
		int price;
		
	public Book(int no, String title, String writer, String publisher, int price) {
			this.no = no;
			this.title = title;
			this.writer = writer;
			this.publisher = publisher;
			this.price = price;
		}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	}
}
