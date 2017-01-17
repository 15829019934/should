package com.video.action;

import org.apache.struts2.ServletActionContext;

import com.video.po.UserPO;
import com.video.service.LoginService;

public class LoginAction {
	private UserPO user;
	private LoginService loginService;
	
	
	
	public String login(){
		loginService.login(user);
		return null;
	}



	public UserPO getUser() {
		return user;
	}
	public void setUser(UserPO user) {
		this.user = user;
	}
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	
	
	
	
}
