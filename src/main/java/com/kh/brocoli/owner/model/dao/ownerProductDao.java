package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;


@Repository("oProductDao")
public class ownerProductDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public int insertProduct(Product p) {	//박주완-2020-04-03 상품정보등록
		String price = p.getP_Price().replaceAll(",","");
		String sail = p.getP_Sail_Price().replaceAll(",","");
		String lprice = p.getP_Last_Price().replaceAll(",","");
		p.setP_Price(price);
		p.setP_Sail_Price(sail);
		p.setP_Last_Price(lprice);
		System.out.println("콤마제거후 최종가격 : " + lprice);
		
		
		return sqlSession.insert("ownerProduct-mapper.insertProduct",p);
	}
	
	public int insertProductImg(Product_File pf) {	//박주완-2020-04-06 상품사진정보등록
		return sqlSession.insert("ownerProduct-mapper.insertProductImg",pf);
	}

	public int insertProductOption(Product_Option po, int PNO) { //박주완-2020-04-06 상품옵션 리스트 정보등록
		int result = 0;
		List<Product_Option> poList =  po.getProduct_OptionVOList();	//VIEW 단에서 보내준 옵션값을 LIST형태로 VO 변수에 저장후 출력.
        for(Product_Option Option : poList) {
        	Option.setOp_P_NO(PNO);
        	result = sqlSession.insert("ownerProduct-mapper.insertProductOption",Option);
        }
		return result;
	}
	
	public ArrayList<Product> listProduct(String Brand_NO) {
		return (ArrayList)sqlSession.selectList("ownerProduct-mapper.selectProductList",Brand_NO);
	}

	public ArrayList<Product_Option> stockDetail(int pNO) {
		return (ArrayList)sqlSession.selectList("ownerProduct-mapper.selectStockDetail",pNO);
	}
	
	public int stockChange(Product_Option po) {
		int result = 0;
		List<Product_Option> poList = po.getProduct_OptionVOList();
		for(Product_Option Option : poList) {
			result = sqlSession.insert("ownerProduct-mapper.updateStockChange",Option);
		}
		return result;
	}

	public ArrayList<Product_Option> stockList(String bNO) {
		System.out.println("DAO 단계에서의 bNO : " + bNO);
		return (ArrayList)sqlSession.selectList("ownerProduct-mapper.selectStockList",bNO);
	}
	
	
	
	
	
}
