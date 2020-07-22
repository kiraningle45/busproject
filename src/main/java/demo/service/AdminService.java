package demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.dao.AdminDao;

@Service
public class AdminService {
	@Autowired
	AdminDao adminDao;
	
	public boolean validateAdmin(String name, String password)
	{
		
		return adminDao.validateAdmin(name,password);
	}


}
