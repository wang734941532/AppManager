package cn.app.dao;

import cn.app.pojo.Dev_User;

public interface Dev_UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Dev_User record);

    int insertSelective(Dev_User record);

    Dev_User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Dev_User record);

    int updateByPrimaryKey(Dev_User record);
}