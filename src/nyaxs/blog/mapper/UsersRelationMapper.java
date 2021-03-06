package nyaxs.blog.mapper;

import java.util.List;

import nyaxs.blog.pojo.UsersRelation;

public interface UsersRelationMapper {
	//获取已关注的用户列表
	List<UsersRelation> getFollowedList(int id) throws Exception;
	//获取互相关注的用户列表
	List<UsersRelation> getBothFollowedList(int id) throws Exception;
	//获取关注自己的用户列表
	List<UsersRelation> getFollwers(int id) throws Exception;
	//取消关注
	void cancelFollowing(int userId,int followedId) throws Exception;
	//互相关注
	void updateBothRelationId1(int id1,int id2) throws Exception; 
	void updateBothRelationId2(int id1,int id2) throws Exception; 
	//单方面取消关注
	void deleteRelationSingle(int userId,int followedId) throws Exception; 
}
