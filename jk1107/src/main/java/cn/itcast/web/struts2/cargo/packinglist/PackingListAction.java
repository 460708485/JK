package cn.itcast.web.struts2.cargo.packinglist;

import java.util.List;

import org.springframework.beans.BeanUtils;

import cn.itcast.entity.Export;
import cn.itcast.entity.PackingList;
import cn.itcast.entity.dao.ExportDAO;
import cn.itcast.entity.dao.PackingListDAO;
import cn.itcast.web.common.util.UtilFuns;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-3
 */
public class PackingListAction extends _BaseStruts2Action implements ModelDriven<PackingList> {
	private PackingList model = new PackingList();
	public PackingList getModel() {
		return model;
	}
	
	//列表
	public String list(){
		PackingListDAO oDao = (PackingListDAO)this.getDao("daoPackingList");
		List<PackingList> dataList = oDao.find("from PackingList o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
	
	//转向新增页面
	public String tocreate(){
		//准备报运号的html div
		//获取报运号
		StringBuffer sBuf = new StringBuffer();
		String _exportNos = "";
		ExportDAO eDao = (ExportDAO)this.getDao("daoExport");
		for(String id : model.getId().split(", ")){						//export id
			Export export = (Export) eDao.get(Export.class, id);
			//通过一个checkbox传递多个值
			sBuf.append("<input type=\"checkbox\" name=\"exportNos\" value=\"").append(export.getId()).append("|").append(export.getCustomerContract()).append("\" checked class=\"input\"/>");
			sBuf.append(export.getCustomerContract());
		}
		ActionContext.getContext().put("mrecordData", sBuf.toString());
		
		return "pcreate";
	}
	
	
	//转向修改页面
	public String toupdate(){
		PackingListDAO oDao = (PackingListDAO)this.getDao("daoPackingList");
		PackingList obj = (PackingList)oDao.get(PackingList.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		//获取所有的id号
		String[] exportIds = obj.getExportIds().split("\\|");
		String[] exportNos = obj.getExportNos().split("\\|");
		
		StringBuffer sBuf = new StringBuffer();
		for(int i=0;i<exportIds.length;i++){
			sBuf.append("<input type=\"checkbox\" name=\"exportNos\" value=\"").append(exportIds[i]).append("|").append(exportNos[i]).append("\" checked class=\"input\"/>");
			sBuf.append(exportNos[i]);
		}
		ActionContext.getContext().put("mrecordData", sBuf.toString());
		
		return "pupdate";
	}
	
	//转向查看页面 
	public String toview(){
		PackingListDAO oDao = (PackingListDAO)this.getDao("daoPackingList");
		PackingList obj = (PackingList)oDao.get(PackingList.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		//获取所有的id号
		String[] exportIds = obj.getExportIds().split("\\|");
		String[] exportNos = obj.getExportNos().split("\\|");
		
		StringBuffer sBuf = new StringBuffer();
		for(int i=0;i<exportIds.length;i++){
			sBuf.append("<a href=\"/export/exportAction_toviewinfo?id=").append(exportIds[i]).append("\">");
			sBuf.append(exportNos[i]);
			sBuf.append("</a>");
		}
		ActionContext.getContext().put("mrecordData", sBuf.toString());
		
		return "pview";
	}

	
	//保存
	public String save(){
		PackingListDAO oDao = (PackingListDAO)this.getDao("daoPackingList");
		PackingList p;
		if(UtilFuns.isNotEmpty( model.getId())){
			p = (PackingList)oDao.get(PackingList.class,model.getId());			//修改
		}else{
			p = new PackingList();
			
		}
		BeanUtils.copyProperties(model, p);							//利用工具类复制页面属性值
		
		String exportIds = "";
		String exportNos = "";
		
		String[] _tmpString = model.getExportNos().split(", ");		//拆分多个checkbox中的值
		
		for(int i=0;i<_tmpString.length;i++){
			String[] _tmp2String = _tmpString[i].split("\\|");		//拆分出id和No		split参数是一个正则表达式
			exportIds += _tmp2String[0] + "|";
			exportNos += _tmp2String[1] + "|";
		}
		exportIds = UtilFuns.delLastChar(exportIds);
		exportNos = UtilFuns.delLastChar(exportNos);
		
		p.setExportIds(exportIds);
		p.setExportNos(exportNos);
		
		oDao.saveOrUpdate(p);
		
		return list();
	}
	
	
	//删除
	public String delete(){
		PackingListDAO oDao = (PackingListDAO)this.getDao("daoPackingList");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		oDao.deleteAllById(ids, PackingList.class);
		
		return list();
	}	
}
