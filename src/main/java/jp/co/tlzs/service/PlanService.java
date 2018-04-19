package jp.co.tlzs.service;

import jp.co.tlzs.mapper.PlanMapper;
import jp.co.tlzs.po.Plan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@Service
public class PlanService {

    @Autowired
    private PlanMapper planMapper;

    @Transactional
    public boolean plan(Plan plan){
        try {
            planMapper.insertPlan(plan);
            //add point

            //add sms

            //...
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;


    }

    public List<Plan> showPlan() {
        List<Plan> list=null;
        try {

            list=planMapper.showPlan();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }
}
