package cn.itcast.common.db;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppContext {
	private static AppContext instance;
	private static String[] paths = {"beans.xml"};
	private AbstractApplicationContext appContext;

	public synchronized static AppContext getInstance() {
		if (instance == null) {
			instance = new AppContext();
		}
		return instance;
	}

	private AppContext() {
		this.appContext = new ClassPathXmlApplicationContext(paths);
	}

	public AbstractApplicationContext getAppContext() {
		return appContext;
	} 

}