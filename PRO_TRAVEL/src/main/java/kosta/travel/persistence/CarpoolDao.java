package kosta.travel.persistence;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import travel.carpool.mapper.CarpoolMapper;

import org.apache.ibatis.io.Resources;

public class CarpoolDao {
	private static CarpoolDao dao = new CarpoolDao();
	public static CarpoolDao getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config-carpool.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}
	
	public void insertCarpool(Carpool carpool) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).insertCarpool(carpool);
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
	
	public int carpool_num(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(CarpoolMapper.class).carpool_num() == null){ //湲��씠 �옉�꽦�릺吏� �븡�쓬.
				return 0 ;
			}else{
				return sqlSession.getMapper(CarpoolMapper.class).carpool_num();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			sqlSession.close();
		}
	}
	
	public List<Carpool> listCarpool(int startRow, Search search) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try{
			return session.getMapper(CarpoolMapper.class).listCarpool(new RowBounds(startRow, 10), search);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		} finally{
			session.close();
		}
	}
	
	public Carpool detailCarpool(String c_num) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try{
			return session.getMapper(CarpoolMapper.class).detailCarpool(c_num);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		} finally{
			session.close();
		}
	}
	
	public void deleteCarpool(Carpool carpool) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).deleteCarpool(carpool);
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
	
	public void updateCarpool(Carpool carpool) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).updateCarpool(carpool);
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
	
	public int countCarpool(Search search){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re=0;
		try {
			re=sqlSession.getMapper(CarpoolMapper.class).countCarpool(search);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	public void insertCarpool_Request(Carpool_Request carpool_request) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).insertCarpool_Request(carpool_request);
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
	
	public Carpool_Request detailCarpool_Request(String cr_num) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try{
			return session.getMapper(CarpoolMapper.class).detailCarpool_Request(cr_num);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		} finally{
			session.close();
		}
	}
	
	public void deleteCarpool_Request(Carpool_Request carpool_request) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).deleteCarpool_Request(carpool_request);
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
	
	public List<Carpool> myMakeCarpool(String u_id) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try{
			return session.getMapper(CarpoolMapper.class).myMakeCarpool(u_id);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		} finally{
			session.close();
		}
	}
	
	public List<Carpool_Request>myRequestCarpool(String u_id) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try{
			return session.getMapper(CarpoolMapper.class).myRequestCarpool(u_id);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		} finally{
			session.close();
		}
	}
	
	public int carpool_Request_num() throws Exception{
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(CarpoolMapper.class).carpool_num() == null){ //湲��씠 �옉�꽦�릺吏� �븡�쓬.
				return 0 ;
			}else{
				return sqlSession.getMapper(CarpoolMapper.class).carpool_Request_num();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			sqlSession.close();
		}
	}
	
	public void updatePerson(Carpool carpool){
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(CarpoolMapper.class).updatePerson(carpool);
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
}