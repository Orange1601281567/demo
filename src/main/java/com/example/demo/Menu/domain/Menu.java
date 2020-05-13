package com.example.demo.Menu.domain;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
*  菜单信息
*
*  Created by xuxueli on '2020-05-08 13:45:06'.
*/
public class Menu implements Serializable {
    private static final long serialVersionUID = 42L;

    /**
    * 菜单ID
    */
    private int id;

    /**
    * 菜单名称
    */
    private String title;

    /**
    * 菜单地址
    */
    private String href;

    /**
    * 父级ID
    */
    private int parentId;

    /**
    * 菜单顺序
    */
    private String order;
    /**
     * 子菜单
     */
    private List<Menu> children;

    /**
    * 菜单图标
    */
    private String icon;

    /**
    * 菜单类型
    */
    private int type;

    /**
    * 创建时间
    */
    private Date addtime;

    /**
     * 菜单所需要的权限角色
     */
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

}