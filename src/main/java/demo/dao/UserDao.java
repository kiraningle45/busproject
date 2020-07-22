package demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import demo.model.Admin;
import demo.model.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int AddNewUser(User user) 
	{
		String sql= "insert into userp values(?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[] {user.getName(),user.getPassword(),user.getEmail(),user.getMnumber()});
	}

	public boolean userValidate(String name, String password)
	{
		String sql="select * from userp where name=? and password=?";
		
		List<User> user = jdbcTemplate.query(sql, new Object[] { name, password }, new RowMapper() {
			public User mapRow(ResultSet rs, int num) throws SQLException {

				User user = new User();
				user.setName(rs.getString(1));
				user.setPassword(rs.getString(2));
				return user;
			}
		});

		if (user.size() == 1)
			return true;
		else
			return false;
	}

	}
	

