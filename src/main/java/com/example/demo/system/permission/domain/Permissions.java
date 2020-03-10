package com.example.demo.system.permission.domain;

public class Permissions {
    private int id;
    private String rolename;
    private  String permission;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    @Override
    public String toString() {
        return "permissions{" +
                "id=" + id +
                ", rolename='" + rolename + '\'' +
                ", permission='" + permission + '\'' +
                '}';
    }
}
