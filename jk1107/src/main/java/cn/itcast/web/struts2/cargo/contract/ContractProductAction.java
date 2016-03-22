package cn.itcast.web.struts2.cargo.contract;

import java.util.List;

import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.Factory;
import cn.itcast.entity.dao.ContractProductDAO;
import cn.itcast.entity.dao.FactoryDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-2-26
 */
public class ContractProductAction extends _BaseStruts2Action implements ModelDriven<ContractProduct> {
	ContractProduct model = new ContractProduct();
	public ContractProduct getModel() {
		return model;
	}

	//转向新增页面
	public String tocreate(){
		//准备列表数据
		ContractProductDAO oDao = (ContractProductDAO) this.getDao("daoContractProduct");
		List<ContractProduct> dataList = oDao.find("from ContractProduct o where o.contract.id='"+model.getContract().getId()+"'");			//某个合同下的货物信息
		ActionContext.getContext().put("dataList", dataList);
		
		//准备数据生产厂家下拉列表
		FactoryDAO fDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> factoryList = fDao.find("from Factory o where o.state=1");	//1启用0停用
		ActionContext.getContext().put("factoryList", factoryList);
		
		
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate(){
		//准备数据生产厂家下拉列表
		FactoryDAO fDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> factoryList = fDao.find("from Factory o where o.state=1");	//1启用0停用
		ActionContext.getContext().put("factoryList", factoryList);
		
		ContractProductDAO oDao = (ContractProductDAO) this.getDao("daoContractProduct");
		ContractProduct obj = (ContractProduct) oDao.get(ContractProduct.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pupdate";
	}
	
	//保存
	public String save(){
		ContractProductDAO oDao = (ContractProductDAO) this.getDao("daoContractProduct");
		oDao.saveOrUpdate(model);
		
		return tocreate();			//批量新增
	}
	
	//删除
	public String delete(){
		ContractProductDAO oDao = (ContractProductDAO) this.getDao("daoContractProduct");
		oDao.delete(model.getId(), ContractProduct.class);
		
		return tocreate();
	}
}
