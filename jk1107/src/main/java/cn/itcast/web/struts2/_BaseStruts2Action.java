package cn.itcast.web.struts2;

import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionSupport;

public class _BaseStruts2Action extends ActionSupport {
	//从上下文环境中获取DAO对象
	public Object getDao(String dao){
		WebApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext());
		return ac.getBean(dao);
	}
	
	//统一查询框架
	public String f_conditionStr;			//用户输入的查询条件
	public String f_type;					//下拉框选择的当前值
	public String comboContentStr;			//下拉框option串
	
	public String getF_conditionStr() {
		return f_conditionStr;
	}
	public void setF_conditionStr(String fConditionStr) {
		f_conditionStr = fConditionStr;
	}
	public String getF_type() {
		return f_type;
	}
	public void setF_type(String fType) {
		f_type = fType;
	}
	public String getComboContentStr() {
		return comboContentStr;
	}
	public void setComboContentStr(String comboContentStr) {
		this.comboContentStr = comboContentStr;
	}
}
