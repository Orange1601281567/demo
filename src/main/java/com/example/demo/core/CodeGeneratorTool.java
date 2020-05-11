package com.example.demo.core;


import com.example.demo.core.model.ClassInfo;
import com.example.demo.core.util.TableParseUtil;

import java.io.IOException;

/**
 * code generate tool
 *
 * @author xuxueli 2018-04-25 16:29:58
 */
public class CodeGeneratorTool {

	/**
	 * process Table Into ClassInfo
	 *
	 * @param tableSql
	 * @return
	 */
	public static ClassInfo processTableIntoClassInfo(String tableSql) throws IOException {
		return TableParseUtil.processTableIntoClassInfo(tableSql);
	}

}