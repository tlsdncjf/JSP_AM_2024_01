package com.KoreaIT.java.jsp_AM.dao;

import java.sql.Connection;


public class ArticleDao {
		private Connection conn;
		
		public ArticleDao(Connection conn) {
				this.conn = conn;
		}
		
}
