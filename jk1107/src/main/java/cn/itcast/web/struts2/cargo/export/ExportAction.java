package cn.itcast.web.struts2.cargo.export;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.itcast.entity.Contract;
import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.Export;
import cn.itcast.entity.ExportProduct;
import cn.itcast.entity.ExtCproduct;
import cn.itcast.entity.ExtEproduct;
import cn.itcast.entity.dao.ContractDAO;
import cn.itcast.entity.dao.ExportDAO;
import cn.itcast.entity.dao.ExportProductDAO;
import cn.itcast.web.common.util.UtilFuns;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-2
 */
public class ExportAction extends _BaseStruts2Action implements ModelDriven<Export> {
	private Export model = new Export();
	public Export getModel() {
		return model;
	}
	
	//合同查询
	public String contractlist(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		List<Contract> dataList = oDao.find("from Contract o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "pcontractlist";
	}

	//列表
	public String list(){
		ExportDAO oDao = (ExportDAO) this.getDao("daoExport");
		List<Export> dataList = oDao.find("from Export o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
	
	//新增
	public String contractsave(){
		//获得用户选择的合同
		/*
		 * 操作步骤：
		 * 1、获取合同号，查询对应的合同信息
		 * 2、创建报运
		 * 3、报运和合同连接起来。
		 * 
		 */
		ContractDAO cDao = (ContractDAO)this.getDao("daoContract");
		String[] ids = model.getId().split(", ");						//contract id
		String _customerContract = "";
		
		ExportDAO oDao = (ExportDAO)this.getDao("daoExport");
		Export export = new Export();
		Set epSet = new HashSet();
		
		for(String id : ids){
			Contract contract = (Contract) cDao.get(Contract.class, id);
			_customerContract += contract.getContractNo() + " ";
			
			//货物信息搬家
			
			for(ContractProduct cp : contract.getContractProducts()){
				ExportProduct ep = new ExportProduct();
				ep.setProductNo(cp.getProductNo());
				ep.setFactory(cp.getFactory());
				ep.setPackingUnit(cp.getPackingUnit());
				ep.setCnumber(cp.getCnumber());
				ep.setBoxNum(cp.getBoxNum());
				
				//附件信息搬家
				Set extSet = new HashSet();
				for(ExtCproduct extcp : cp.getExtCproducts()){
					ExtEproduct extep = new ExtEproduct();
					extep.setProductNo(extcp.getProductNo());
					extep.setFactory(extcp.getFactory());
					extep.setPackingUnit(extcp.getPackingUnit());
					extep.setCnumber(extcp.getCnumber());
					extep.setBoxNum(extcp.getBoxNum());
					
					extep.setExportProduct(ep);
					extSet.add(extep);
				}
				
				ep.setExtEproduct(extSet);
				ep.setExport(export);
				epSet.add(ep);
			}
			
		}
		
		export.setContractIds(model.getId().replaceAll(" ", ""));
		export.setCustomerContract(_customerContract);
		export.setState(0);					//0草稿1已上报
		
		export.setExportProduct(epSet);
		
		oDao.saveOrUpdate(export);
		
		return list();
	}
	
	
	//删除
	public String delete(){
		ExportDAO oDao = (ExportDAO)this.getDao("daoExport");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		oDao.deleteAllById(ids, Export.class);
		
		return list();
	}	
	
	//转向修改页面
	public String toupdate(){
		ExportDAO oDao = (ExportDAO) this.getDao("daoExport");
		Export obj = (Export)oDao.get(Export.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		//准备表格的数据，拼接js串	addTRRecord('resultTable', '', '', '', '', '');
		StringBuffer sBuf = new StringBuffer();
		for(ExportProduct ep : obj.getExportProduct()){
			sBuf.append("addTRRecord('resultTable', '").append(ep.getId()).append("', '").append(ep.getProductNo()).append("', '").append(ep.getCnumber()).append("', '").append(UtilFuns.convertNull(ep.getGrossWeight())).append("', '").append(UtilFuns.convertNull(ep.getNetWeight())).append("');");
		}
		ActionContext.getContext().put("mrecordData", sBuf.toString());
		
		
		return "pupdate";
	}
	
	//修改保存
	public String save(){
		ExportProductDAO oDao = (ExportProductDAO) this.getDao("daoExportProduct");
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] mr_changed = request.getParameterValues("mr_changed");	//优化批量修改时的重复保存
		String[] id = request.getParameterValues("mr_id");				//修改其页面名称，防止和主记录中字段同名
		String[] orderNo = request.getParameterValues("orderNo");
		String[] ep_cnumber = request.getParameterValues("ep_cnumber");
		String[] ep_grossWeight = request.getParameterValues("ep_grossWeight");
		String[] ep_netWeight = request.getParameterValues("ep_netWeight");
		
		//处理多个货物
		Set epSet = new HashSet();
		for(int i=0;i<orderNo.length;i++){
			if(!mr_changed[i].equals("1")){
				continue;				//跳过当前记录
			}
			
			ExportProduct ep;
			if(UtilFuns.isNotEmpty(id[i])){
				ep = (ExportProduct) oDao.get(ExportProduct.class, id[i]);		//修改
			}else{
				ep = new ExportProduct();										//新增
			}
			if(UtilFuns.isNotEmpty(orderNo[i])){
				ep.setOrderNo(Integer.parseInt(orderNo[i]));
			}
			if(UtilFuns.isNotEmpty(ep_cnumber[i])){
				ep.setCnumber(Integer.parseInt(ep_cnumber[i]));
			}
			if(UtilFuns.isNotEmpty(ep_grossWeight[i])){
				ep.setGrossWeight(new BigDecimal(ep_grossWeight[i]));
			}
			if(UtilFuns.isNotEmpty(ep_netWeight[i])){
				ep.setNetWeight(new BigDecimal(ep_netWeight[i]));
			}
			
			ep.setExport(model);
			epSet.add(ep);
		}
		
		model.setExportProduct(epSet);
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//转向修改页面
	public String toview(){
		ExportDAO oDao = (ExportDAO) this.getDao("daoExport");
		Export obj = (Export) oDao.get(Export.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pview";
	}
	
	//转向修改页面  装箱业务使用 by tony 2014.03.03
	public String toviewinfo(){
		ExportDAO oDao = (ExportDAO) this.getDao("daoExport");
		Export obj = (Export) oDao.get(Export.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pviewinfo";
	}
}
