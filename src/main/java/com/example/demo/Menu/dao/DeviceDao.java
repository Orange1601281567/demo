package com.example.demo.Menu.dao;

import com.example.demo.domain.Device;
import org.apache.ibatis.annotations.Param;

public interface DeviceDao {
    /**
     * 新增
     */
    public int insert(@Param("device") Device device);
}
