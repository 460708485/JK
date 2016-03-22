package cn.itcast.web.struts2.cargo.contract;

import java.util.List;

import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.ExtCproduct;
import cn.itcast.entity.Factory;
import cn.itcast.entity.SysCode;
import cn.itcast.entity.dao.ContractProductDAO;
import cn.itcast.entity.dao.ExtCproductDAO;
import cn.itcast.entity.dao.FactoryDAO;
import cn.itcast.entity.dao.SysCodeDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-2-26
 */
public class ExtCproductAction  extends _BaseStruts2Action implements ModelDriven<ExtCproduct> {
	ExtCproduct model = new ExtCproduct();
	public ExtCproduct getModel() {
		return model;
	}

	//转向新增页面
	public String tocreate(){
		//准备列表数据
		ExtCproductDAO oDao = (ExtCproductDAO) this.getDao("daoExtCproduct");
		List<ExtCproduct> dataList = oDao.find("from ExtCproduct o where o.contractProduct.id='"+model.getContractProduct().getId()+"'");			//某个货物下的附件信息
		ActionContext.getContext().put("dataList", dataList);
		
		//准备数据分类下拉列表
		SysCodeDAO sDao = (SysCodeDAO) this.getDao("daoSysCode");
		List<SysCode> ctypeList = sDao.find("from SysCode o where o.parentSysCode.id='0104'");	//0104附件类型，
		ActionContext.getContext().put("ctypeList", ctypeList);
		
		//准备数据生产厂家下拉列表
		FactoryDAO fDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> factoryList = fDao.find("from Factory o where o.state=1");	//1启用0停用
		ActionContext.getContext().put("factoryList", factoryList);
		
		
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate(){
		//准备数据分类下拉列表
		SysCodeDAO sDao = (SysCodeDAO) this.getDao("daoSysCode");
		List<SysCode> ctypeList = sDao.find("from SysCode o where o.parentSysCode.id='0104'");	//0104附件类型，
		ActionContext.getContext().put("ctypeList", ctypeList);
		
		//准备数据生产厂家下拉列表
		FactoryDAO fDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> factoryList = fDao.find("from Factory o where o.state=1");	//1启用0停用
		ActionContext.getContext().put("factoryList", factoryList);
		
		ExtCproductDAO oDao = (ExtCproductDAO) this.getDao("daoExtCproduct");
		ExtCproduct obj = (ExtCproduct) oDao.get(ExtCproduct.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
				
		return "pupdate";
	}
	
	//保存
	public String save(){
		ExtCproductDAO oDao = (ExtCproductDAO) this.getDao("daoExtCproduct");
		oDao.saveOrUpdate(model);
		
		return tocreate();			//批量新增
	}
	
	//删除
	public String delete(){
		ExtCproductDAO oDao = (ExtCproductDAO) this.getDao("daoExtCproduct");
		oDao.delete(model.getId(), ExtCproduct.class);
		
		return tocreate();
	}
}
