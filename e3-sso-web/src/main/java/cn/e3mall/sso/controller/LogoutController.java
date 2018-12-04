package cn.e3mall.sso.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.utils.CookieUtils;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.sso.service.LogoutService;

/**
 * 用户退出处理
 * <p>
 * Title: LoginController
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Company: www.itcast.cn
 * </p>
 * 
 * @version 1.0
 */
@Controller
public class LogoutController {

	@Value("${PORTAL_URL}")
	private String PORTAL_URL;

	@Autowired
	private LogoutService logoutService;

	@RequestMapping(value = "/user/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String token = CookieUtils.getCookieValue(request, "token");
		logoutService.userLogout(token);
//		response.sendRedirect("http://139.196.90.105:8180");
//		response.sendRedirect(PORTAL_URL);
		String strReferer = request.getHeader("Referer");
		if(strReferer.length() != 0) {
			response.sendRedirect(strReferer);
		}else {
			response.sendRedirect(PORTAL_URL);
		}
		return null;
	}
}
