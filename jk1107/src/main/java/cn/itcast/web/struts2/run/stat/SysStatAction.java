package cn.itcast.web.struts2.run.stat;

import java.io.FileNotFoundException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.itcast.common.springdao.AppContext;
import cn.itcast.common.springdao.SQLDAO;
import cn.itcast.web.common.util.file.FileUtil;

/**
 * @Description: 
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-9
 */
public class SysStatAction {
	//生产厂家的销售情况统计-饼形图
	/*
	 * 操作步骤：
	 * 1、获取数据
	 * 2、生成一个xml文件，覆盖样例中的数据问题，
	 * 3、先转向jStat.jsp，然后传参数，转向对应目录下的index.html
	 */
	
	public String factorySale() throws FileNotFoundException{
		String sql = "SELECT f.factory_name, t.sumnum FROM ( SELECT t.factory_id, SUM(t.cnumber) AS sumnum FROM contract_product_c t GROUP BY t.factory_id ) t LEFT JOIN (SELECT * FROM factory_c ) f ON f.factory_id = t.factory_id";
		this.makeXmlPie(this.getData(sql), "factorysale");
		return "factorysale";
	}
	
	//货物的销售排行20
	public String productSale() throws FileNotFoundException{
		String sql = "SELECT product_no,SUM(cnumber) AS sumnum FROM contract_product_c GROUP BY product_no ORDER BY sumnum DESC LIMIT 20";
		this.makeXmlColumnAndLine(this.getData(sql), "productsale");
		return "productsale";
	}
	
	//系统访问压力曲线图
	public String onlineinfo() throws FileNotFoundException{
		String sql = "SELECT t.a1,login_log_p.countnum FROM (SELECT a1 FROM on_line_t) t LEFT JOIN (SELECT SUBSTRING(login_time,12,2) AS logtime, COUNT(*) AS countnum FROM login_log_p GROUP BY logtime ) login_log_p ON t.a1=login_log_p.logtime";
		this.makeXmlColumnAndLine(this.getData(sql), "onlineinfo");
		return "onlineinfo";
	}
	
	//获取数据
	public List<String> getData(String sql){
		//利用jdbcTemplate直接查询数据库，封装到一个单个数组中
		SQLDAO sqlDao = (SQLDAO)AppContext.getInstance().getAppContext().getBean("sqlDao");
		return sqlDao.executeSQL(sql);
	}
	
	//生成饼形图xml
	private void makeXmlPie(List<String> dataList, String dir) throws FileNotFoundException{
		//拼接指定类型的xml数据文件
		StringBuffer sBuf = new StringBuffer();
		sBuf.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sBuf.append("<pie>");
		
		for(int i=0;i<dataList.size();){
			sBuf.append("  <slice title=\"").append(dataList.get(i++)).append("\">").append(dataList.get(i++)).append("</slice>");
		}
		sBuf.append("</pie>");
		
		FileUtil fu = new FileUtil();
		
		//覆盖指定目录下的数据文件
		fu.newTxt(ServletActionContext.getRequest().getRealPath("/run/stat/"+dir+"/"), "data.xml", sBuf.toString(), "utf-8");
	}
	
	//生成柱状图xml
	private void makeXmlColumnAndLine(List<String> dataList, String dir) throws FileNotFoundException{
		//拼接指定类型的xml数据文件
		int n = 0;
		StringBuffer sBuf = new StringBuffer();
		sBuf.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sBuf.append("<chart>");
		sBuf.append("	<series>");
		
		n = 0;
		for(int i=0;i<dataList.size();){
			sBuf.append("		<value xid=\"").append(n++).append("\">").append(dataList.get(i++)).append("</value>");
			i++;
		}
		sBuf.append("	</series>");
		sBuf.append("	<graphs>");
		sBuf.append("		<graph gid=\"1\">");
		
		n = 0;
		for(int i=0;i<dataList.size();){
			i++;
			sBuf.append("			<value xid=\"").append(n++).append("\" color=\"#318DBD\">").append(dataList.get(i++)).append("</value>");
		}
		sBuf.append("		</graph>");
		sBuf.append("	</graphs>");
		sBuf.append("</chart>");
		
		FileUtil fu = new FileUtil();
		
		//覆盖指定目录下的数据文件
		fu.newTxt(ServletActionContext.getRequest().getRealPath("/run/stat/"+dir+"/"), "data.xml", sBuf.toString(), "utf-8");		
	}
	
}
