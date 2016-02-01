package com.pims.dao;

import java.util.List;

import com.pims.bean.Friends;

public interface FriendsDao {
	
	public void addFriends(Friends friends);
	
	public List<Friends> findFriends();
	
	public void updFriends(String sql);
	
	public void delFriends(int friendsId);
	
	public Friends findFriendsById(int friendsId);
}
