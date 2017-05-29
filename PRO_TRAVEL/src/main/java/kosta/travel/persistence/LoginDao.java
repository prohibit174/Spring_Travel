package kosta.travel.persistence;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.carpool.mapper.CarpoolMapper;
import travel.carpool.model.Carpool;
import travel.carpool.model.Search;
import travel.main.mapper.LoginMapper;
import travel.users.mapper.UsersMapper;
import travel.users.model.Users;

public class LoginDao {

	private static LoginDao dao = new LoginDao();
	
	public static LoginDao getInstance(){
		return dao;
	}
	
	//myBatis 
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config_users.xml";
		
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return new SqlSessionFactoryBuilder().build(in);	
	}
	
	public Users loginCheck(Users users) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		try {
			return session.getMapper(LoginMapper.class).loginCheck(users);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
		
	}
}
