package cn.itcast.web.struts2.cargo.contracthis;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.BeanUtils;

import cn.itcast.entity.Contract;
import cn.itcast.entity.ContractHis;
import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.ContractProductHis;
import cn.itcast.entity.ExtCproduct;
import cn.itcast.entity.ExtCproductHis;
import cn.itcast.entity.dao.ContractDAO;
import cn.itcast.entity.dao.ContractHisDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-6
 */
public class ContractHisAction extends _BaseStruts2Action implements ModelDriven<ContractHis> {
	private ContractHis model = new ContractHis();
	public ContractHis getModel() {
		return model;
	}

	//保存 自动选择记录归档
	public String save2(){
		Long startTime = System.currentTimeMillis();
		
		//从旧合同中筛选出历史数据（条件：保存2012年前的数据进行归档）
		ContractDAO cDao = (ContractDAO) this.getDao("daoContract");
		List<Contract> cList = cDao.find("from Contract o where o.signingDate like '2011%'");

		Set hisSet = new HashSet();
		ContractHisDAO hisDao = (ContractHisDAO) this.getDao("daoContractHis");
		//复制数据
		for(Contract contract : cList){
			ContractHis contractHis = new ContractHis();
			BeanUtils.copyProperties(contract, contractHis);
			
			//处理货物
			Set cphisSet = new HashSet();
			for(ContractProduct cp : contract.getContractProducts()){
				ContractProductHis cphis = new ContractProductHis();
				BeanUtils.copyProperties(cp, cphis);
				
				//处理附件
				Set exthisSet = new HashSet();
				for(ExtCproduct extcp : cp.getExtCproducts()){
					ExtCproductHis exthis = new ExtCproductHis();
					BeanUtils.copyProperties(extcp, exthis);
					
					exthis.setContractProductHis(cphis);			//绑定关系
					exthisSet.add(exthis);
				}
				
				cphis.setExtCproductHiss(exthisSet);
				cphis.setContractHis(contractHis);					//绑定关系
				
				cphisSet.add(cphis);
			}

			contractHis.setContractProductHiss(cphisSet);			//绑定关系
			hisSet.add(contractHis);
		}
		
		hisDao.saveOrUpdateAll(hisSet);
		//删除合同表中的历史数据
		if(cList!=null&&cList.size()>0){
			cDao.deleteAll(cList);										//按对象集合删除
		}
		
		Long stopTime = System.currentTimeMillis();
		System.out.println((stopTime-startTime)+"ms");
		
		return list();
	}
	
	//一个一个归档，交给用户，用户自己定义谁该归档
	public String save(){
		//从旧合同中筛选出历史数据（条件：保存2012年前的数据进行归档）
		ContractDAO cDao = (ContractDAO) this.getDao("daoContract");

		ContractHisDAO hisDao = (ContractHisDAO) this.getDao("daoContractHis");
		//复制数据
		Contract contract = (Contract) cDao.get(Contract.class, model.getId());
		ContractHis contractHis = new ContractHis();
			BeanUtils.copyProperties(contract, contractHis);
			
			//处理货物
			Set cphisSet = new HashSet();
			for(ContractProduct cp : contract.getContractProducts()){
				ContractProductHis cphis = new ContractProductHis();
				BeanUtils.copyProperties(cp, cphis);
				
				//处理附件
				Set exthisSet = new HashSet();
				for(ExtCproduct extcp : cp.getExtCproducts()){
					ExtCproductHis exthis = new ExtCproductHis();
					BeanUtils.copyProperties(extcp, exthis);
					
					exthis.setContractProductHis(cphis);			//绑定关系
					exthisSet.add(exthis);
				}
				
				cphis.setExtCproductHiss(exthisSet);
				cphis.setContractHis(contractHis);					//绑定关系
				
				cphisSet.add(cphis);
			}

			contractHis.setContractProductHiss(cphisSet);			//绑定关系
		
		hisDao.saveOrUpdate(contractHis);
		
		//删除合同表中的历史数据
		cDao.delete(model.getId(), Contract.class);
		
		return list();
	}
	//列表
	public String list(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		List<ContractHis> dataList = oDao.find("from ContractHis o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
}
