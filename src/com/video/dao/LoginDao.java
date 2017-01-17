package com.video.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.video.po.UserPO;

public class LoginDao {

	private SqlSessionTemplate sqlTemplate;
	
	public void login(UserPO user) {
		System.out.println(sqlTemplate);
	}

	public void setSqlTemplate(SqlSessionTemplate sqlTemplate) {
		this.sqlTemplate = sqlTemplate;
	}
	

}
