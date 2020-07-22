package demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import demo.dao.UserDao;
import demo.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public int AddUser(User user) 
	{
		return userDao.AddNewUser(user);
	}

	public boolean userValidation(String name, String password) 
	{
		return userDao.userValidate(name,password);
	}
	
	

}
