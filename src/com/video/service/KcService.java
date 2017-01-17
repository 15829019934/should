package com.video.service;


import java.util.List;

import com.video.dao.KcDao;
import com.video.vo.DTypeVO;
import com.video.vo.DirectionVO;

public class KcService {
	
	
	private KcDao kcDao;

	public void setKcDao(KcDao kcDao) {
		this.kcDao = kcDao;
	}

	public void addDirection(List<String> listDire) {
		kcDao.addDirection(listDire);
	}

	public List<DirectionVO> directionList() {
		return kcDao.directionList();
	}

	public void delDirectionById(int id) {
		kcDao.delDirectionById(id);
		kcDao.delDirectionType(id);
	}

	public DirectionVO findDirectionInfo(int id) {
		
		return kcDao.findDirectionInfo(id);
	}

	public List<DTypeVO> findDirectionType(int id) {
		
		return kcDao.findDirectionType(id);
	}
	
	
	
	
	
	
}
