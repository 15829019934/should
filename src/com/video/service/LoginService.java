package com.video.service;

import com.video.dao.LoginDao;
import com.video.po.UserPO;

public class LoginService {
	
	private LoginDao loginDao;

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	public void login(UserPO user) {
		this.loginDao.login(user);
	}
	
	
	
}
