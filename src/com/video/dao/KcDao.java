package com.video.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.video.vo.DTypeVO;
import com.video.vo.DirectionVO;


public class KcDao {
	
private SqlSessionTemplate sqlTemplate;
	
	public void setSqlTemplate(SqlSessionTemplate sqlTemplate) {
		this.sqlTemplate = sqlTemplate;
	}

	public void addDirection(List<String> listDire) {
		sqlTemplate.insert("video.add_direction", listDire);
	}

	public List<DirectionVO> directionList() {
		return sqlTemplate.selectList("video.directionList");
	}

	public void delDirectionById(int id) {
		sqlTemplate.delete("video.delDirectionById", id);	
	}
	/**
	 * 通过ID查找方向
	 * @param id
	 * @return
	 */
	public DirectionVO findDirectionInfo(int id) {
		return sqlTemplate.selectOne("video.findDirectionInfo", id);	
	}
	/**
	 * 通过方向ID 查找对应下的分类信息
	 * @param id
	 * @return
	 */
	public List<DTypeVO> findDirectionType(int id) {
		return sqlTemplate.selectList("video.findDirectionType", id);	
	}

	public void delDirectionType(int id) {
		sqlTemplate.delete("video.delDirectionType",id);
	}
	
	
}
