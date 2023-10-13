package service;

import java.util.List;

import dao.UserInfoDao;
import obj.UserInfoObj;

public class UserInfoService {

	public void addUserInfo(UserInfoObj userInfoObj) {

		UserInfoDao userInfoDao = new UserInfoDao();

		userInfoDao.addUserInfo(userInfoObj);

	}

	public List<UserInfoObj> getUserInfoList(String email) {

		UserInfoDao userInfoDao = new UserInfoDao();
		List<UserInfoObj> userInfoObjList = userInfoDao.getUserInfoByEmail(email);
		return userInfoObjList;

	}

	public boolean isEmailExists(String email) {
		// TODO 自動生成されたメソッド・スタブ
		UserInfoDao userInfoDao = new UserInfoDao();
		boolean userInfoObjList = userInfoDao.isEmailExists(email);
		return userInfoObjList;
	}

}