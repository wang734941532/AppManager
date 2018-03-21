package cn.app.dao;

import cn.app.pojo.Information;

public interface InformationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Information record);

    int insertSelective(Information record);

    Information selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Information record);

    int updateByPrimaryKey(Information record);
}