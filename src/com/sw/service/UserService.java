package com.sw.service;

import java.util.List;

import com.sdo.entity.User;

public interface UserService {
    public User  login(String username);
    public void register(User u);
    public String ajaxCheck(String username);
}
