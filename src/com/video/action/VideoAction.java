package com.video.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.video.service.VideoService;
import com.video.vo.DirectionVO;

public class VideoAction {
	
	private VideoService vs;
	private List<DirectionVO> listDire;
	private int id;
	
	
	
	public String showVideoKc(){
		listDire = vs.findDirectionList();
		return "showVideoKc";
	}

	
	public String findDTinfo(){
		System.out.println("id="+id);
		return null;
	}
	
	
	public void setVs(VideoService vs) {
		this.vs = vs;
	}


	public List<DirectionVO> getListDire() {
		return listDire;
	}


	public void setId(int id) {
		this.id = id;
	}
	
	public String findTypeByDid()
	{
		
		try
		{
			List<DTypeVO> listDT=vs.findTypeByDid(did);
			HttpServletResponse resp=ServletActionContext.getActionContext(req);
			String msg=JSON.toJSONString(listDT);
			System.out.println(msg);
			resp.setContentType("text/html;charset=utf-8");
			resp.getWriter().write(msg);
		}catch(Exception e){
			e.printStackTrace();
		}


	return null;
	
	}

	
	
	
}
