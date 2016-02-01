package com.pims.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pims.bean.Friends;
import com.pims.common.DaoSupport;
import com.pims.dao.FriendsDao;
import com.pims.jdbcUtil.DBConnectionManager;

public class FriendsDaoImpl extends DaoSupport<Friends> implements FriendsDao {

	public void addFriends(Friends friends) {
		// TODO �Զ����ɵķ������
		List<Object> list = new ArrayList<>();
		
		list.add(friends.getFriendsId());
		list.add(friends.getUserName());
		list.add(friends.getName());
		list.add(friends.getPhone());
		list.add(friends.getEmail());
		list.add(friends.getWorkSpace());
		list.add(friends.getPlace());
		list.add(friends.getQq());
		
		this.save("friends", list);
		
	}

	public List<Friends> findFriends() {
		// TODO �Զ����ɵķ������
//		ResultSet rs = this.findAll("friends");
//		
		List<Friends> list = new ArrayList<Friends>();
		
		try {
			Connection conn = DBConnectionManager.getConnection();
			String sql = "select * from friends";
			ResultSet rs = conn.prepareStatement(sql).executeQuery();
			
			while(rs.next()){
				Friends friend = new Friends();
				friend.setFriendsId(rs.getInt("friendsId"));
				friend.setUserName(rs.getString("userName"));
				friend.setName(rs.getString("name"));
				friend.setPhone(rs.getString("phone"));
				friend.setPlace(rs.getString("place"));
				friend.setQq(rs.getString("qq"));
				friend.setEmail(rs.getString("email"));
				friend.setWorkSpace(rs.getString("workSpace"));
				
				list.add(friend);
				
			}

		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		return list;
	}

	public void updFriends(String sql) {
		// TODO �Զ����ɵķ������
		this.update(sql);
		
	}

	public void delFriends(int friendsId) {
		// TODO �Զ����ɵķ������
		
		this.delete("friends", "friendsId", friendsId);
	}

	@Override
	public Friends findFriendsById(int friendsId) {
		// TODO �Զ����ɵķ������
		Friends fri = new Friends();
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from friends where friendsId="+friendsId;
			
			ResultSet rs = conn.prepareStatement(sql).executeQuery();
			while(rs.next()){
				fri.setFriendsId(rs.getInt("friendsId"));
				fri.setUserName(rs.getString("userName"));
				fri.setName(rs.getString("name"));
				fri.setEmail(rs.getString("email"));
				fri.setPhone(rs.getString("phone"));
				fri.setPlace(rs.getString("place"));
				fri.setWorkSpace(rs.getString("workSpace"));
				fri.setQq(rs.getString("qq"));
				
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return fri;
	}


}
