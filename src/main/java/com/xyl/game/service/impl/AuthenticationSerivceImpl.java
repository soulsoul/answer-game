package com.xyl.game.service.impl;

import com.xyl.game.po.Admin;
import com.xyl.game.service.AuthenticationSerivce;
import com.xyl.game.utils.HeapVariable;
import com.xyl.game.utils.PropertiesUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.Properties;

/**
 * 后台登录认证
 * @author dazhi
 *
 */
@Service
public class AuthenticationSerivceImpl implements AuthenticationSerivce{

	private static final Logger logger = Logger.getLogger(AuthenticationSerivceImpl.class);
	/**
	 * 判断后台是否是第一次登录
	 */
	@Override
	public boolean isFirstAdmin() {
		logger.info("判断是否是第一次登录");
		if(HeapVariable.pwd == null){
			//是第一次登录
			logger.info("第一次登录");
			return true;
		}

		return false;
	}
	@Override
	public Boolean admin(String pwd) {
		if(HeapVariable.pwd == null){
			logger.info("第一次登录，设置密码！");
			HeapVariable.pwd = new Admin();
			HeapVariable.pwd.setPwd(pwd);
			Properties initProperties = PropertiesUtils.initProperties("game.properties");
			initProperties.setProperty("adminPwd", pwd);
			logger.info("密码设置成功！");
			return true;
		}
		Admin admin = HeapVariable.pwd;

		if(pwd==null){
			logger.info("密码未空");
			return false;
		}
		if(admin.getPwd().equals(pwd)){
			logger.info("登录成功！");
			return true;
		}
		logger.info("登录失败，密码错误！");
		return false;
	}

}
