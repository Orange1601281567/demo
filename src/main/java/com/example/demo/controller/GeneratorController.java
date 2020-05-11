package com.example.demo.controller;

import com.example.demo.core.CodeGeneratorTool;
import com.example.demo.core.generator.FreemarkerTool;
import com.example.demo.core.model.ClassInfo;
import com.example.demo.domain.ReturnT;
import freemarker.template.TemplateException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class GeneratorController {


    @Resource
    private FreemarkerTool freemarkerTool;

    @GetMapping("/generate")
    public String generate() {
        return "/generator/index";
    }

    @PostMapping("/generate")
    @ResponseBody
    public ReturnT<Map<String, String>> codeGenerate(String tableSql) {

        try {
            if (StringUtils.isBlank(tableSql)) {
                return new ReturnT<Map<String, String>>(ReturnT.FAIL_CODE, "表结构信息不可为空");
            }
            // parse table
            ClassInfo classInfo = CodeGeneratorTool.processTableIntoClassInfo(tableSql);

            //创建文件夹存放文件
            String path=System.getProperty("user.dir")+"/src/main/java/com/example/demo/"+classInfo.getClassName();
                File path1=new File(path);
                if (!path1.exists()) {
                    path1.mkdirs();
                }

            // code genarete
            Map<String, Object> params = new HashMap<String, Object>();
            params.put("classInfo", classInfo);

            // result
            Map<String, String> result = new HashMap<String, String>();

            result.put("controller_code", freemarkerTool.processString("generator/controller.ftl", params));
            //创建文件夹存储生成文件
            File file = new File(path+"/controller/"+classInfo.getClassName()+"Controller.java");
            if(!file.exists()) {
                file.getParentFile().mkdirs();//创建父级目录
                file.createNewFile();//创建文件
            }
            byte[] bytesArray = result.get("controller_code").getBytes();
            FileOutputStream fos = new FileOutputStream(file);
            fos.write(bytesArray);
            fos.flush();

            result.put("service_code", freemarkerTool.processString("generator/service.ftl", params));
            //创建文件夹存储生成文件
            File file2 = new File(path+"/service/"+classInfo.getClassName()+"Service.java");
            if(!file2.exists()) {
                file2.getParentFile().mkdirs();//创建父级目录
                file2.createNewFile();//创建文件
            }
            byte[] bytesArray2 = result.get("service_code").getBytes();
            FileOutputStream fos2 = new FileOutputStream(file2);
            fos2.write(bytesArray2);
            fos2.flush();


            result.put("service_impl_code", freemarkerTool.processString("generator/service_impl.ftl", params));
            //创建文件夹存储生成文件
            File file3 = new File(path+"/service/impl/"+classInfo.getClassName()+"ServiceImpl.java");
            if(!file3.exists()) {
                file3.getParentFile().mkdirs();//创建父级目录
                file3.createNewFile();//创建文件
            }
            byte[] bytesArray3 = result.get("service_impl_code").getBytes();
            FileOutputStream fos3 = new FileOutputStream(file3);
            fos3.write(bytesArray3);
            fos3.flush();

            result.put("dao_code", freemarkerTool.processString("generator/dao.ftl", params));
            //创建文件夹存储生成文件
            File file4 = new File(path+"/dao/"+classInfo.getClassName()+"Dao.java");
            if(!file4.exists()) {
                file4.getParentFile().mkdirs();//创建父级目录
                file4.createNewFile();//创建文件
            }
            byte[] bytesArray4 = result.get("dao_code").getBytes();
            FileOutputStream fos4 = new FileOutputStream(file4);
            fos4.write(bytesArray4);
            fos4.flush();


            result.put("mybatis_code", freemarkerTool.processString("generator/mybatis.ftl", params));
            //创建文件夹存储生成文件
            File file5 = new File(System.getProperty("user.dir")+"/src/main/resources/mapper/"+classInfo.getClassName()+"Mapper.xml");
            if(!file5.exists()) {
                file5.getParentFile().mkdirs();//创建父级目录
                file5.createNewFile();//创建文件
            }
            byte[] bytesArray5 = result.get("mybatis_code").getBytes();
            FileOutputStream fos5 = new FileOutputStream(file5);
            fos5.write(bytesArray5);
            fos5.flush();


            result.put("model_code", freemarkerTool.processString("generator/model.ftl", params));
            //创建文件夹存储生成文件
            File file6 = new File(path+"/domain/"+classInfo.getClassName()+".java");
            if(!file6.exists()) {
                file6.getParentFile().mkdirs();//创建父级目录
                file6.createNewFile();//创建文件
            }
            byte[] bytesArray6 = result.get("model_code").getBytes();
            FileOutputStream fos6 = new FileOutputStream(file6);
            fos6.write(bytesArray6);
            fos6.flush();


            // 计算,生成代码行数
            int lineNum = 0;
            for (Map.Entry<String, String> item: result.entrySet()) {
                if (item.getValue() != null) {
                    lineNum += StringUtils.countMatches(item.getValue(), "\n");
                }
            }

            return new ReturnT<Map<String, String>>(result);
        } catch (IOException | TemplateException e) {
            return new ReturnT<Map<String, String>>(ReturnT.FAIL_CODE, "表结构解析失败");
        }

    }

}
