package com.video.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.video.vo.DirectionVO;

public class VideoDao {
	
	private SqlSessionTemplate sqlTemplate;
	
	
	public List<DirectionVO> findDirectionList() {
		
		return sqlTemplate.selectList("video.findDirectionList");
	}


	public void setSqlTemplate(SqlSessionTemplate sqlTemplate) {
		this.sqlTemplate = sqlTemplate;
	}


	
	
	

}
