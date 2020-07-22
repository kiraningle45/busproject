package demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import demo.model.Admin;

@Repository
public class AdminDao {
	
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	public boolean validateAdmin(String name, String password) 
	{
		String sql="select * from admin where name=? and password=?";
		
		List<Admin> admin = jdbcTemplate.query(sql, new Object[] { name, password }, new RowMapper() {
			public Admin mapRow(ResultSet rs, int num) throws SQLException {

				Admin admin = new Admin();
				admin.setName(rs.getString(1));
				admin.setPassword(rs.getString(2));
				return admin;
			}
		});

		if (admin.size() == 1)
			return true;
		else
			return false;
	}

}
