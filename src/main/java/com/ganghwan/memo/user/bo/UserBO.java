package com.ganghwan.memo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.memo.common.EncryptUtils;
import com.ganghwan.memo.user.dao.UserDAO;
import com.ganghwan.memo.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	// 회원가입
	public int addUser(String loginId, String password, String name, String email) {
		
		// 암호화
		String encPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(loginId, encPassword, name, email);
	}
	
	//로그인
	public User getUser(String loginId, String password) {
		
		return userDAO.selectUser(loginId, EncryptUtils.md5(password));
	}
}
