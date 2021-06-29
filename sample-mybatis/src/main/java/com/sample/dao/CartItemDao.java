package com.sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sample.dto.CartItemListDto;
import com.sample.util.MybatisUtils;
import com.sample.vo.CartItem;

public class CartItemDao {

	private static CartItemDao instance = new CartItemDao();
	private CartItemDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	public static CartItemDao getInstance() {
		return instance;
	}
	
	private SqlSessionFactory sqlSessionFactory;
	
	/**
	 * 아이템번호를 전달받아서 SAMPLE_CART_ITEMS에서 아이템정보를 삭제한다.
	 * @param itemNo 삭제할 아이템번호
	 */
	public void deleteCartItem(int itemNo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.delete("deleteCartItem", itemNo);
		session.close();
	}
	
	/**
	 * 새 장바구니 아이템 정보를 SAMPLE_CART_ITEMS 테이블에 추가한다.
	 * @param cartItem 새 장바구니 아이템 정보
	 */
	public void insertCartItem(CartItem cartItem) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.insert("insertCartItem", cartItem);
		session.close();
	}
	
	/**
	 * 아이템번호를 전달받아서 SAMPLE_CART_ITEMS 테이블에서 아이템정보를 조회해서 반환한다.
	 * @param itemNo 아이템번호
	 * @return 아이템정보, 아이템번호에 해당하는 아이템정보가 존재하지 않은 경우 null을 반환한다.
	 */
	public CartItem getCartItemByNo(int itemNo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartItem item = sqlSession.selectOne("getCartItemByNo", itemNo);
		sqlSession.close();
		return item;
	}
	
	/**
	 * 사용자 아이디를 전달받아서 그 사용자가 SAMPLE_CART_ITEMS테이블에 저장한 장바구니 아이템 정보를 반환한다.
	 * @param userId 사용자 아이디
	 * @return 장바구니 아이템 목록
	 */
	public List<CartItemListDto> getCartItemsByUserId(String userId) {
		SqlSession session = sqlSessionFactory.openSession();
		List<CartItemListDto> items = session.selectList("getCartItemsByUserId", userId);
		session.close();
		return items;
	}
}
