package demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.dao.BusDao;
import demo.model.Bus;
@Service
public class BusService {
	@Autowired

	BusDao busDao;
	public int  addbus(Bus product) {
		// TODO Auto-generated method stub
		return busDao.addbus(product);
	}
	public List<Bus> getAllbus() {
		// TODO Auto-generated method stub
		
		return busDao.getAllbus();
	}

   
}
