package jp.co.tlzs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.tlzs.po.Manager;
import jp.co.tlzs.service.ManagerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    //@Autowired
    //private UserService userService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String login(Model model){
        return "managerLogin";
    }

    @RequestMapping(value = "",method = RequestMethod.POST)
    public String loginForm(Model model, HttpServletRequest request, @RequestParam String account){
//      String username = request.getParameter("username");
        String password = request.getParameter("password");
        model.addAttribute("account",account);
        model.addAttribute("password",password);
        Manager manager = managerService.login(account);
        if(manager == null){
            model.addAttribute("message", "账号不存在");
            return "managerLogin";
        }
        if(manager.getPassword().equals(password)){
            //request.getSession().setAttribute("user",manager);
        	//List<User> list=userService.userList();
        	//model.addAttribute("userList",list);
            return "redirect:/userList";
        }else {
            model.addAttribute("message", "wrong password");
            return "managerLogin";
        }
       // return "login";
    }



}
