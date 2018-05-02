package jp.co.tlzs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.tlzs.po.User;
import jp.co.tlzs.service.UserService;

@Controller
@RequestMapping("")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String login(Model model){
        return "login";
    }

    @RequestMapping(value = "",method = RequestMethod.POST)
    public String loginForm(Model model, HttpServletRequest request, @RequestParam String account){
//      String username = request.getParameter("username");
        String password = request.getParameter("password");
        model.addAttribute("account",account);
        model.addAttribute("password",password);
        User user = userService.login(account);
        if(user == null){
            model.addAttribute("message", "ユーザ名は存在しません");
            return "login";
        }
        if(user.getPassword().equals(password)){
            request.getSession().setAttribute("loginUser",user);
            request.getSession().setAttribute("username",user.getName());
            return "redirect:/plan/showPlan";
        }else {
            model.addAttribute("message", "パスワードエラー");
        }
        return "login";
    }

    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String registr(Model model/*@RequestBody User user*/){
        //model.addAttribute("message","bbbbb");
        return "register";
    }

    @RequestMapping(value = "register",method = RequestMethod.POST)
    public String registrForm(Model model,User user, HttpServletRequest request){
        String account=user.getAccount();
        String password=user.getPassword();
        String rpassword = request.getParameter("rpassword");

        if(account!="" && password!="" && rpassword!="" && account!="ユーザーID" && password!="パスワード" && rpassword!="パスワード再入力"){
           userService.register(user);
           return "login";

        }else {
        	 model.addAttribute("account",account);
             model.addAttribute("password",password);
             model.addAttribute("rpassword",rpassword);
        	 model.addAttribute("message", "未入力があります");
        	 return "register";
        }

    }

    @RequestMapping(value = "updateUser",method = RequestMethod.POST)
    public String updateUser(User user/*@RequestBody User user*/){
        //model.addAttribute("message","bbbbb");
    	//System.out.println("1");
    	userService.updateUser(user);
    	//System.out.println("11");
        return "redirect:/userList";
    }

    @RequestMapping(value = "deleteUser",method = RequestMethod.GET)
    public String deleteUser(User user/*@RequestBody User user*/){
        //model.addAttribute("message","bbbbb");
    	//System.out.println("1");
    	Long id=user.getId();
    	userService.deleteUser(id);
    	//System.out.println("11");
        return "redirect:/userList";
    }

    @RequestMapping(value = "userList",method = RequestMethod.GET)
    public String userList(Model model){
    	List<User> list=userService.userList();
    	model.addAttribute("userList",list);
        return "employeeList";
    }
}
