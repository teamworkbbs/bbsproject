package com.bbs.dao;

import java.util.List;

import com.bbs.bean.Topics;
import com.bbs.bean.Users;

public interface UserDao {
    /**
     * 添加用户
     *
     * @param user
     * @return
     */
    public boolean add(Users user);

    /**
     * 删除用户
     *
     * @param user
     * @return
     */
    public boolean delete(Users user);

    /**
     * 通过用户id查找是否存在该用户
     *
     * @param index
     * @return
     */
    public Users find(int index);

    /**
     * 更新修改了的用户信息
     *
     * @param user
     * @return
     */
    public boolean update(Users user);

    /**
     * 通过用户名和密码查找是否存在该用户
     *
     * @param user
     * @return
     */
    public Users findByNP(Users user);

    /**
     * 通过用户名和邮箱查找是否存在该用户
     *
     * @param user
     * @return
     */
    public Users findByNE(Users user);

    /**
     * 通过用户名查找是否存在该用户
     *
     * @param userName
     * @return
     */
    public boolean findByName(String userName);
    public boolean findByNic(String userNic);

    /**
     * @param id
     * @return
     */
    public List<Topics> getToipcs(int id);
}

