package cn.e3mall.sso.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.e3mall.common.jedis.JedisClient;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.sso.service.LogoutService;

/**
 * 用户退出处理
 * <p>Title: LoginServiceImpl</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Service
public class LogoutServiceImpl implements LogoutService {

	@Autowired
	private JedisClient jedisClient;
	
	@Override
	public E3Result userLogout(String token) {
		// 将有效时间设置为0
		jedisClient.expire("SESSION:" + token, 0);
		return E3Result.ok();
	}

}
