package jp.co.tlzs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.tlzs.po.Plan;
import jp.co.tlzs.po.User;
import jp.co.tlzs.service.PlanService;

@Controller
@RequestMapping("plan")
public class PlanController {
    @Autowired
    private PlanService planService;
    @Autowired
    private HttpServletRequest request;
    @RequestMapping("showPlan")
    public String list(Model model){
        List<Plan> list=planService.showPlan();
        model.addAttribute("planList",list);
        return "planList";
    }

    @RequestMapping(value = "addPlan",method = RequestMethod.GET)
    public String planForm(Model model){
        return "addPlan";
    }

    @RequestMapping(value = "addPlan",method = RequestMethod.POST)
    public String planAdd(Plan plan){
        Object o=request.getSession().getAttribute("user");
        Long userId= ((User)o).getId();
        plan.setUserId(userId);
        planService.plan(plan);

        return "redirect:/plan/showPlan";
    }


}
