package com.example.demo.system.users.controller;

import com.example.demo.shiro.session.OnlineSession;
import com.example.demo.system.users.domain.User;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/User")
@RequiresRoles("admin")
public class UserOnlineController {
    @Autowired
    private SessionDAO sessionDAO;

    private String prefix = "User";

    @GetMapping(value = "/online")
    public String list() {
        return prefix+"/online";
    }



    /**
     *  获取在线用户
     * @param pagerVO
     * @return
     */
    @PostMapping( "/onlineSession")
    @ResponseBody
    public HashMap<String,Object> listData() {
        List<OnlineSession> list = new ArrayList<>();
        Collection<Session> sessions = sessionDAO.getActiveSessions();
        for (Session session : sessions) {
            OnlineSession userOnlineVO = new OnlineSession();
            User user=new User();
            SimplePrincipalCollection principalCollection;
            if(session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY )== null){
                continue;
            }else {
                principalCollection = (SimplePrincipalCollection) session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
                user = (User) principalCollection.getPrimaryPrincipal();
                userOnlineVO.setUserId(user.getUserid());
                userOnlineVO.setLoginName(user.getName());
            }
            OnlineSession a=(OnlineSession)session;
            userOnlineVO.setHost(session.getHost());
            userOnlineVO.setSessionId((String) session.getId());
            userOnlineVO.setLastAccessTime(session.getLastAccessTime());
            userOnlineVO.setBrowser(a.getBrowser());
            userOnlineVO.setOs(a.getOs());
            list.add(userOnlineVO);
        }
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",list.size());
        result.put("data", list);
        return result;
    }

    /**
     *  让登录用户下线
     * @param sessionId
     * @return
     */
    @PostMapping( "/onlinedel")
    @ResponseBody
    public Boolean delete(String sessionId) {
        Session session = sessionDAO.readSession(sessionId);
        sessionDAO.delete(session);
        return true;
    }

}
