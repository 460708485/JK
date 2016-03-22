package cn.itcast.web.inspector;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * @Description: 监控各action的方法的执行时间
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-6
 */
public class TimeInspector extends AbstractInterceptor {
	private static Logger log = Logger.getLogger(TimeInspector.class);
	public String intercept(ActionInvocation invocation) throws Exception {
		//在执行业务代码之前，设置开始时间
		Long startTime = System.currentTimeMillis();
		
		invocation.invoke();			//回调
		
		//在执行业务代码之后，设定结束时间
		Long stopTime = System.currentTimeMillis();
		
		//记录日志
		System.out.println(System.getProperty("user.dir"));			//默认路径
		log.info(invocation.getProxy().getNamespace()+"/"+invocation.getProxy().getActionName()+"() "+(stopTime-startTime)+" ms");
		return null;
	}

}
