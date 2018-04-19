package jp.co.tlzs.mapper;


import jp.co.tlzs.po.Plan;

import java.sql.ResultSet;
import java.util.List;

public interface PlanMapper {

    public boolean insertPlan(Plan plan);

    public List<Plan> showPlan();
}
