package com.video.action;

import java.util.List;

import com.video.service.KcService;
import com.video.vo.DTypeVO;
import com.video.vo.DirectionVO;


public class KcAction {
	
	
	
	private List<String> listDire;
	private KcService kcService;
	private List<DirectionVO> listDirection;
	private int id;
	private DirectionVO dv;
	private List<DTypeVO> listDtype;
	
	public String addDirection(){
		kcService.addDirection(listDire);
		return "direction_list_action";
	}
	
	
	public String directionList(){
		listDirection = kcService.directionList();
		return "direction_list";
	}
	
	public String delDirectionById(){
		kcService.delDirectionById(id);
		return "direction_list_action";
	}
	
	
	public String findDirectionInfo(){
		//查找方向
		dv = kcService.findDirectionInfo(id);
		//查找方向下的分类信息
		listDtype = kcService.findDirectionType(id);
		return "direction_one_info";
	}
	
	

	public void setKcService(KcService kcService) {
		this.kcService = kcService;
	}
	public List<String> getListDire() {
		return listDire;
	}
	public void setListDire(List<String> listDire) {
		this.listDire = listDire;
	}
	public List<DirectionVO> getListDirection() {
		return listDirection;
	}
	public void setListDirection(List<DirectionVO> listDirection) {
		this.listDirection = listDirection;
	}
	public DirectionVO getDv() {
		return dv;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<DTypeVO> getListDtype() {
		return listDtype;
	}
	
}
