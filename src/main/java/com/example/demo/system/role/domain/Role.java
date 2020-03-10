package com.example.demo.system.role.domain;

public class Role {
    private int id;
    private String userid;
    private String rolename;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", userid='" + userid + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }
}
