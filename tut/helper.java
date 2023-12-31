package com.tut;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class helper {

	public static String get10words(String desc) 
	{
		String[] str = desc.split(" ");

		if (str.length > 10) {
			String res = " ";
			for (int i = 0; i < 10; i++) {
				res = res + str[i]+" ";
			}
			return (res + "...");
		} else {
			return (desc + "...");
		}

	}
	
	public static Map<String,Long> getCount(SessionFactory factory)
	{
		Session session = factory.openSession();
		String q1 = "Select Count(*) from User";
		String q2 = "Select Count(*) from Product";
		
		Query query1 = session.createQuery(q1);
		Query query2 = session.createQuery(q2);
		
		Long userCount = (Long)query1.list().get(0);
		Long productCount = (Long)query2.list().get(0);
		
		Map<String,Long> map = new HashMap();
		map.put("userCount", userCount);
		map.put("productCount", productCount);
		
		session.close();
		
		return map;
		
	}

}
