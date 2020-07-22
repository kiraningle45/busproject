package demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import demo.model.Bus;


@Repository
public class BusDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public int addbus(Bus product) {
		// TODO Auto-generated method stub
		
		String sql="insert into bus() values(?,?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[] {product.getBusid(),product.getName(),product.getDate(),product.getPlacefrom(),product.getPlaceto()});
	}
	
	public List<Bus> getAllbus() {
		String sql="select * from bus";
		return jdbcTemplate.query(sql,new RowMapper() {public Bus mapRow(ResultSet rs, int arg1) throws SQLException {
			Bus p=new Bus();
			p.setBusid(rs.getInt(1));
			p.setName(rs.getString(2));
			p.setDate(rs.getInt(3));
			p.setPlacefrom(rs.getString(4));
			p.setPlaceto(rs.getString(5));
			return p;
		}});
		
	}
	
	

}
