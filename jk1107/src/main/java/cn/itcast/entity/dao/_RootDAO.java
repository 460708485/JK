package cn.itcast.entity.dao;

import java.util.ArrayList;
import java.util.List;

import cn.itcast.entity.base._BaseRootDAO;
import cn.itcast.web.common.util.UtilFuns;

public class _RootDAO extends _BaseRootDAO{
	/*
	 * 统一查询框架  by tony 
	 * who 哪个业务对象
	 * pValue 下拉框的值 <option value="pValue">pText</option>
	 * pText  下拉框的文字
	 * dlValue 下拉框选中的值
	 * curValue 用户输入的查询值
	 */
	public List dataList(String who, String[] pValue, String[] pText, String dlValue, String curValue){
		
		UtilFuns utilFuns = new UtilFuns();
		String[] aConditionStr = utilFuns.splitFindStr(curValue);		//规整分隔符，支持空格、逗号、中文件逗号

		StringBuffer hql = new StringBuffer();
		hql.append("from ").append(who).append(" o where 1=1");
		
		List paraList = new ArrayList();
		int j=0;j=0;
		
		//进行模糊查询，类似google的处理
		if (UtilFuns.isNotEmpty(curValue)) {
			for(int i=0;i<aConditionStr.length;i++){
				if (UtilFuns.isNotEmpty(dlValue)) {
					hql.append(" and o.").append(dlValue).append(" like ?");
					paraList.add("%" + aConditionStr[i] + "%");
				}else{
					hql.append(" and (");
					for(j=0;j<pValue.length;j++){
						hql.append("o.").append(pValue[j]).append(" like ? or ");
						paraList.add("%" + aConditionStr[i] + "%");
					}
					hql.delete(hql.length()-3, hql.length());	//del last ' or'
					hql.append(")");
				}
			}
		}
		
		return this.find(hql.toString(), paraList.toArray());		//返回查询结果
	}
		
	/* 
	 * 
	 * 取得单值,返回字符串,多个内容时形成一个字符串用逗号隔开
	 * ex: hql  "select o.id from Contract o where ... "
	 *  */
	public String findString(String hql) {
		String s = "";
		List aList = this.getHibernateTemplate().find(hql);
		if(aList!=null && aList.size()>0){
			if(aList.size()==1){
				s = (String)aList.get(0);
			}else{
				for(int i=0;i<aList.size();i++){
					s += (String)aList.get(i) + ",";
				}
				UtilFuns utilFuns = new UtilFuns();
				s = utilFuns.delLastChar(s);
			}
		}
		return s;
	}
}
