package service;

import dao.UserInfoDao;
import obj.UserInfoObj;

public class UserInfoService {

	public void addUserInfo(UserInfoObj userInfoObj) {
		
		UserInfoDao userInfoDao = new UserInfoDao();
		
		userInfoDao.addUserInfo(userInfoObj);
		
	}

}