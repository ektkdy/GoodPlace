package com.kh.goodplace.partner.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodplace.partner.model.dao.PartnerDao;

@Service("rService") 
public class PartnerServiceImpl {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private PartnerDao pDao;

}
