package com.video.action;

import java.util.List;

import com.video.service.VideoService;
import com.video.vo.DirectionVO;

public class AjaxAction {
	
	private int id;
	private int a1;
	private int a2;
	
	private int a3;
	
	public String ajax1(){
		System.out.println("id="+id+";a1="+a1);
		return null;
	}
	
	
	public String ajax2(){
		System.out.println("id="+id+";a2="+a2);

		return null;
	}
	
	public String ajax3(){
		System.out.println("id="+id+";a3="+a3);

		return null;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getA1() {
		return a1;
	}


	public void setA1(int a1) {
		this.a1 = a1;
	}


	public int getA2() {
		return a2;
	}


	public void setA2(int a2) {
		this.a2 = a2;
	}


	public int getA3() {
		return a3;
	}


	public void setA3(int a3) {
		this.a3 = a3;
	}
	
	
}
