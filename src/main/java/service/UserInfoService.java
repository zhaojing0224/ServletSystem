package service;

import java.util.List;

import dao.UserInfoDao;
import obj.UserInfoObj;

public class UserInfoService {

	public void addUserInfo(UserInfoObj userInfoObj) {
		
		UserInfoDao userInfoDao = new UserInfoDao();
		
		userInfoDao.addUserInfo(userInfoObj);
		
	}

	public List<UserInfoObj> getUserInfoList() {

		UserInfoDao userInfoDao = new UserInfoDao();
		List<UserInfoObj> userInfoObjList = userInfoDao.getUserInfoList();
		return userInfoObjList;
		
	}

}