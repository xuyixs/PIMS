package com.pims.common;

import java.sql.ResultSet;
import java.util.List;

public interface DAO {
	
	public void save(String tableName, List<Object> list);
	
	public void update(String sql);
	
	public ResultSet findAll(String tableName);
	
	public void delete(String tableName,String idName, int idValue);
	
	
}
