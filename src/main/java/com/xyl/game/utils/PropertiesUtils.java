package com.xyl.game.utils;

import com.xyl.game.GameApplication;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/**
 * PropertiesUtils
 *
 * @author Naah
 * @date 2017年11月14日
 *
 */
public class PropertiesUtils {

    /**
     * 初始化配置文件
     * @param fileName
     * @return
     */
	public static Properties initProperties(String fileName) {
		Properties properties = new Properties();
		InputStreamReader input = null;
		try {
		    // 加载Java项目根路径下的配置文件
			input = new InputStreamReader(GameApplication.class.getResourceAsStream("/" + fileName), "UTF-8");
			// 加载属性文件
			properties.load(input);
		} catch (IOException io) {
			io.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return properties;
	}



}
