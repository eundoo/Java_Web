package com.sample.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sample.util.MybatisUtils;
import com.sample.vo.Product;

public class ProductDao {
	
	private SqlSessionFactory sqlSessionFactory;
	
	private static ProductDao instance = new ProductDao();
	private ProductDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	
	/**
	 * 미리 생성된 ProductDao객체를 반환한다.
	 * @return ProductDao
	 */
	public static ProductDao getInstance() {
		return instance;
	}
	
	/**
	 * 새 상품정보를 전달받아서 SAMPLE_PRODUCTS 테이블에 저장한다.
	 * @param product 새 상품정보
	 */
	public void insertProduct(Product product) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.insert("insertProduct", product);
		session.close();
	}
	
	/**
	 * 전달받은 상품번호에 해당하는 상품정보를 SAMPLE_PRODUCTS 테이블에서 삭제한다.
	 * @param no 삭제할 상품번호, 해당 상품을 참조하는 자식 레코드가 있으면 예외가 발생한다.
	 */
	public void deleteProduct(int no) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.delete("deleteProduct", no);
		session.close();
	}
		
	/**
	 * 변경할 상품정보를 전달받아서 SAMPLE_PRODUCTS에서 해당 상품의 정보를 변경한다.
	 * @param product 변경할 상품정보
	 */
	public void updateProduct(Product product) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("updateProduct", product);
		session.close();
	}
	
	/**
	 * 조회조건을 전달받아서 조건에 해당하는 상품정보를 SAMPLE_PRODUCTS 테이블에서 조회해서 반환한다.
	 * @param condition 조회조건
	 * @return 상품정보 목록, 조회조건에 해당하는 상품이 존재하지 않으면, 빈 List객체가 반환된다.
	 */
	public List<Product> getProducts(Map<String, Object> condition) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Product> products = session.selectList("getProducts", condition);
		session.close();
		return products;
	}
	
	/**
	 * SAMPLE_PRODUCTS 테이블에 저장된 모든 상품정보의 갯수를 반환한다.
	 * @return 상품정보 갯수
	 */
	public int getRowsCount() {
		SqlSession session = sqlSessionFactory.openSession();
		int rowsCount = session.selectOne("getRowsCount");
		session.close();
		return rowsCount;
	}
	
	/**
	 * 전달받은 상품번호에 해당하는 상품정보를 SAMPLE_PRODUCTS 테이블에서 조회해서 반환한다.
	 * @param no 조회할 상품번호
	 * @return 상품정보, 상품번호에 해당하는 상품정보가 존재하지 않으면 null을 반환한다.
	 */
	public Product getProductByNo(int no) {
		SqlSession session = sqlSessionFactory.openSession();
		Product product = session.selectOne("getProductByNo", no);
		session.close();
		return product;
	}
	
	public List<Product> getProductsByName(String name) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Product> products = session.selectList("getProductsByName", name);
		session.close();
		return products;
	}
	
	
}
