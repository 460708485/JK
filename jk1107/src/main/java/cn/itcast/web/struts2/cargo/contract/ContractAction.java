package cn.itcast.web.struts2.cargo.contract;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import cn.itcast.entity.Contract;
import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.ExtCproduct;
import cn.itcast.entity.dao.ContractDAO;
import cn.itcast.web.print.ContractPrint;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-2-26
 */
public class ContractAction extends _BaseStruts2Action implements ModelDriven<Contract>  {
	private Contract model = new Contract();
	public Contract getModel() {
		return model;
	}
	
	//列表
	public String list(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		List<Contract> dataList = oDao.find("from Contract o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
	
	//转向新增页面
	public String tocreate(){
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		Contract obj = (Contract) oDao.get(Contract.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pupdate";
	}
	
	//转向查看页面
	public String toview(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		Contract obj = (Contract) oDao.get(Contract.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pview";
	}
	
	//保存
	public String save(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		if(model.getId()==null){
			model.setState(0);			//0草稿 1已上报待报运
		}
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//删除
	public String delete(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		oDao.deleteAllById(ids, Contract.class);
		
		return list();
	}
	
	
	//上报
	public String submit(){
		this.changeState(1);
		return list();
	}
	
	//取消
	public String cancel(){
		this.changeState(0);
		return list();
	}
	
	//修改状态
	private void changeState(Integer value){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		Set oSet = new HashSet();
		for(String id : ids){
			Contract c = (Contract) oDao.get(Contract.class, id);
			c.setState(value);				//1启用0停用
			
			oSet.add(c);
		}
		oDao.saveOrUpdateAll(oSet);			//批量保存
	}	
	
	//复制	
	public String copy1(){
		/*
		 * 操作步骤：
		 * 1、根据用户指定的id查找合同信息，合同信息中就包含货物信息和附件信息
		 * 2、创建一个新对象，将就合同对象的信息一一get/set到新的合同中。Id不拿
		 * 3、以此方法处理货物、附件
		 * 4、保存新的合同，新的货物，新的附件
		 * 
		 */
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		Contract oldContract = (Contract) oDao.get(Contract.class, model.getId());		//旧合同
		Contract newContract = new Contract();			//新合同
		newContract.setContractNo("[复制]"+oldContract.getContractNo());
		newContract.setCustomName(oldContract.getCustomName());
		newContract.setTotalAmount(oldContract.getTotalAmount());
		//省略其他属性
		
		//初始化
		newContract.setState(0);			//0草稿
		
		//处理货物
		Set cpSet = new HashSet();
		for(ContractProduct cp : oldContract.getContractProducts()){
			ContractProduct newcp = new ContractProduct();
			newcp.setProductNo(cp.getProductNo());
			newcp.setCnumber(cp.getCnumber());
			newcp.setPrice(cp.getPrice());
			newcp.setAmount(cp.getAmount());
			
			newcp.setContract(newContract);							//绑定关系
			cpSet.add(newcp);
		}
		
		newContract.setContractProducts(cpSet);						//绑定关系
		oDao.saveOrUpdate(newContract);
		
		return list();
	}
	
	//复制  id=null
	public String copy2(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		Contract contract = (Contract) oDao.get(Contract.class, model.getId());
		contract.setId(null);
		contract.setContractNo("[复制]" + contract.getContractNo());
		contract.setState(0);			//初始化，0草稿
		
		//处理货物信息
		for(ContractProduct cp : contract.getContractProducts()){
			cp.setId(null);
			
			//?要不要绑定关系		不需要，因为contract是查询出来的，ccontract.getContractProducts() 实际上cp中就含有关联关系
			
			//处理附件信息
			for(ExtCproduct ep : cp.getExtCproducts()){
				ep.setId(null);
			}
		}
		
		oDao.saveOrUpdate(contract);
		
		return list();
	}
	
	//复制 copyProperties()
	public String copy3(){
		ContractDAO oDao = (ContractDAO) this.getDao("daoContract");
		Contract oldContract = (Contract) oDao.get(Contract.class, model.getId());
		Contract newContract = new Contract();
		
		BeanUtils.copyProperties(oldContract, newContract);		//复制对象
		newContract.setId(null);
		newContract.setContractNo("[复制]"+newContract.getContractNo());
		newContract.setState(0);								//0草稿
		
		//处理货物
		Set cpSet = new HashSet();
		for(ContractProduct cp : oldContract.getContractProducts()){
			ContractProduct newcp = new ContractProduct();
			BeanUtils.copyProperties(cp, newcp);				//复制对象
			newcp.setId(null);
			
			//处理附件
			Set epSet = new HashSet();
			for(ExtCproduct ep : cp.getExtCproducts()){
				ExtCproduct newep = new ExtCproduct();
				BeanUtils.copyProperties(ep, newep);			//复制对象
				newep.setId(null);
				newep.setContractProduct(newcp);				//绑定关系
				
				epSet.add(newep);
			}
			
			newcp.setContract(newContract);						//绑定关系
			newcp.setExtCproducts(epSet);						//绑定关系
			cpSet.add(newcp);
		}
		
		newContract.setContractProducts(cpSet);					//绑定关系
		oDao.saveOrUpdate(newContract);
		
		return list();
	}
	
	//打印
	public void print() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		ContractDAO cDao = (ContractDAO)this.getDao("daoContract");
		ContractPrint cprint = new ContractPrint();
		
		cprint.print(model.getId(), cDao, response);
	}
	
}
