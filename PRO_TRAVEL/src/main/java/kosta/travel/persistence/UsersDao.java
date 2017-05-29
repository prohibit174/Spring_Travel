package kosta.travel.persistence;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.print.attribute.HashPrintJobAttributeSet;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.carpool.mapper.CarpoolMapper;
import travel.carpool.model.Carpool;
import travel.users.mapper.UsersMapper;

public class UsersDao {

	private static UsersDao dao = new UsersDao();
	
	public static UsersDao getInstance(){
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
	
	//insert user
	public void insertUsers(Users users) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(UsersMapper.class).insertUsers(users);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	
	//Check User ID Duplicate
	public int checkId(String string){
		int re = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlsession.getMapper(UsersMapper.class).idCheck(string);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
	}

	public void insertUsers2(Users users) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(UsersMapper.class).insertUsers2(users);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
	}
	
	//User Detail Information
	public Users userDetail(String u_id){
		SqlSession session = getSqlSessionFactory().openSession();
		Users users = null;
		try {
			users = session.getMapper(UsersMapper.class).userDetail(u_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return users;
	}

	//User Information Update
	public void userUpdate(Users users){
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(UsersMapper.class).userUpdate(users);
			System.out.println(re);
			if(re>0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	//checkPw for update information
		public boolean checkPw(String u_id, String u_pwd){
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			Map<String, String>map = new HashMap<String, String>();
			map.put("u_id", u_id);
			map.put("u_pwd", u_pwd);
			boolean result = false;
			System.out.println(map.get("u_pwd"));
			try {
				re = session.getMapper(UsersMapper.class).checkPw(map);
				System.out.println(re);
				if(re>0){
					result = true;
				}else{
					result = false;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return result;
		}
	
}
