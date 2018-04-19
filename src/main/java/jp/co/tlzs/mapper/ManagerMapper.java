package jp.co.tlzs.mapper;


import jp.co.tlzs.po.Manager;

public interface ManagerMapper{

    public Manager findByAccount(String account);
}
