/**
 * 
 */
package com.bbs.interceptor;

import java.util.Map;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.bbs.bean.Users;

/**
 * @author bbsguoji
 * @email bbsguo_ji@163.com
 */
public class UserInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = 1L;

	@Override
	public String doIntercept(ActionInvocation invocation) throws Exception {
		ActionContext actx = invocation.getInvocationContext();
		Map session = actx.getSession();
		Users u = (Users) session.get("tu");
		if (u == null) {
			return Action.LOGIN;
		}
		return invocation.invoke();
	}

}
