package com.example.demo.shiro.token;


import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.atomic.AtomicInteger;


public class MyRetryLimitCredentialsMatcher extends HashedCredentialsMatcher {
    @Override
    public boolean doCredentialsMatch(AuthenticationToken authcToken, AuthenticationInfo info) {
        EasyTypeToken tk = (EasyTypeToken) authcToken;
        if(tk.getType().equals(LoginType.NOPASSWD)){
            return true;
        }

        boolean matches = super.doCredentialsMatch(authcToken, info);

        return matches;


}}