package com.video.service;

import java.util.List;

import com.video.dao.VideoDao;
import com.video.vo.DirectionVO;

public class VideoService {
	
	private   VideoDao vd;
	
	public List<DirectionVO> findDirectionList() {
		
		return vd.findDirectionList();
	}

	public void setVd(VideoDao vd) {
		this.vd = vd;
	}
	
	
	
}
