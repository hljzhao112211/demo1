package jp.co.tlzs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.tlzs.mapper.ManagerMapper;
import jp.co.tlzs.po.Manager;

@Service
public class ManagerService {

    @Autowired
    private ManagerMapper managerMapper;

    public Manager login(String account) {
        return managerMapper.findByAccount(account);
    }


}
