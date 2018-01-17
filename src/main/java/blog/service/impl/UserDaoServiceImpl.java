package blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.dao.UserDao;
import blog.entity.User;
import blog.service.UserDaoService;
@Service
public class UserDaoServiceImpl implements UserDaoService{
@Autowired
	private UserDao userdao;
	@Override
	public User login(User user) {
		
		return userdao.login(user);
		// TODO Auto-generated method stub
		
	}
	@Override
	public User Register(User user) {
		// TODO Auto-generated method stub
		return userdao.register(user);
	}

}
