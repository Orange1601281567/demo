package com.example.demo.domain;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import java.io.Serializable;
import java.util.List;

/**
* 
* @author hsweb-generator3.0
*/

@ApiModel(description = "")
public class Device implements Serializable {
    
    @ApiModelProperty(value = "设备品牌")
    private String deviceBrand="";
    
    @ApiModelProperty(value = "唯一标识")
    private int deviceId;
    
    @ApiModelProperty(value = "设备名称")
    private String deviceName="";
    
    @ApiModelProperty(value = "设备参数")
    private String deviceParameters="";
    
    @ApiModelProperty(value = "设备单价")
    private String devicePrice="";
    
    @ApiModelProperty(value = "设备规格型号")
    private String deviceSpecification="";

    @ApiModelProperty(value = "设备类型")
    private String deviceType="";

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getDeviceBrand() {
        return deviceBrand;
    }

    public void setDeviceBrand(String deviceBrand) {
        this.deviceBrand = deviceBrand;
    }

    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getDeviceParameters() {
        return deviceParameters;
    }

    public void setDeviceParameters(String deviceParameters) {
        this.deviceParameters = deviceParameters;
    }

    public String getDevicePrice() {
        return devicePrice;
    }

    public void setDevicePrice(String devicePrice) {
        this.devicePrice = devicePrice;
    }

    public String getDeviceSpecification() {
        return deviceSpecification;
    }

    public void setDeviceSpecification(String deviceSpecification) {
        this.deviceSpecification = deviceSpecification;
    }

    @Override
    public String toString() {
        return "device{" +
                "deviceBrand='" + deviceBrand + '\'' +
                ", deviceId=" + deviceId +
                ", deviceName='" + deviceName + '\'' +
                ", deviceParameters='" + deviceParameters + '\'' +
                ", devicePrice=" + devicePrice +
                ", deviceSpecification='" + deviceSpecification + '\'' +
                '}';
    }
}