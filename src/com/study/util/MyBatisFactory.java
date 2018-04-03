package com.study.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//sqlSessionFactory properties 주소를 읽기 위해서 설정하는 것 
//설정파일 
//매핑 파일 : sql 구문 
public class MyBatisFactory {
	
	public static SqlSessionFactory getSqlSession() {
		String resource = "resource/mybatis-config.xml";		
		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			return sqlSessionFactory;
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("MyBatis 오류", e);
		}
			
	}
	
}