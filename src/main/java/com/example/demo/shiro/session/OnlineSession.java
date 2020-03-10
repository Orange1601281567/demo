package com.example.demo.shiro.session;


import org.apache.shiro.session.mgt.SimpleSession;

/**
 * 在线用户会话属性
 * 
 * @author ruoyi
 */
public class OnlineSession extends SimpleSession {
    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    private String userId;

    /**
     * 用户名称
     */
    private String loginName;

    /**
     * sessionID
     */
    private String sessionId;

    /**
     * 登录IP地址
     */
    private String host;

    /**
     * 浏览器类型
     */
    private String browser;

    /**
     * 操作系统
     */
    private String os;

    /**
     * 属性是否改变 优化session数据同步
     */
    private transient boolean attributeChanged = false;

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    @Override
    public String getHost() {
        return host;
    }

    @Override
    public void setHost(String host) {
        this.host = host;
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public boolean isAttributeChanged() {
        return attributeChanged;
    }

    public void setAttributeChanged(boolean attributeChanged) {
        this.attributeChanged = attributeChanged;
    }

    @Override
    public String toString() {
        return "OnlineSession{" +
                "userId='" + userId + '\'' +
                ", loginName='" + loginName + '\'' +
                ", sessionId='" + sessionId + '\'' +
                ", host='" + host + '\'' +
                ", browser='" + browser + '\'' +
                ", os='" + os + '\'' +
                ", attributeChanged=" + attributeChanged +
                '}';
    }
}