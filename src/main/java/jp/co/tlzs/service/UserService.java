package jp.co.tlzs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jp.co.tlzs.mapper.UserMapper;
import jp.co.tlzs.po.User;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public User login(String account) {
        return userMapper.findByAccount(account);
    }

    @Transactional
    public boolean register(User user){
        try {
            userMapper.insertUser(user);
            //add point

            //add sms

            //...
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public List<User> userList(){
    	List<User> list=null;
        try {

            list=userMapper.getUser();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean updateUser(User user){
        try {
            userMapper.updateUser(user);
            //add point

            //add sms

            //...
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;


    }

    public boolean deleteUser(Long id){
        try {
            userMapper.deleteUser(id);
            //add point

            //add sms

            //...
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;


    }

}
