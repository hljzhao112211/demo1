package jp.co.tlzs.mapper;


import java.util.List;

import jp.co.tlzs.po.User;

public interface UserMapper{
    public User get(Long id);

    public List<User> find();

    public User findByAccount(String account);

    public boolean insertUser(User user);

    public List<User> getUser();

    public boolean updateUser(User user);

    public boolean deleteUser(Long id);
}
