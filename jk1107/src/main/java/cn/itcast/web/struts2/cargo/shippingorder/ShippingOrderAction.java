package cn.itcast.web.struts2.cargo.shippingorder;

import cn.itcast.entity.ShippingOrder;
import cn.itcast.entity.dao.ShippingOrderDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-3
 */
public class ShippingOrderAction extends _BaseStruts2Action implements ModelDriven<ShippingOrder> {
	private ShippingOrder model = new ShippingOrder();
	public ShippingOrder getModel() {
		return model;
	}

	//转向编辑页面
	public String toedit(){
		//修改
		ShippingOrderDAO oDao = (ShippingOrderDAO)this.getDao("daoShippingOrder");
		ShippingOrder obj = (ShippingOrder)oDao.get(ShippingOrder.class, model.getId());			// 装箱id
		ActionContext.getContext().put("obj", obj);
		
		
		return "pedit";
	}
	
	//保存
	public String save(){
		ShippingOrderDAO oDao = (ShippingOrderDAO)this.getDao("daoShippingOrder");
		oDao.saveOrUpdate(model);
		
		return toedit();
	}
	
	
}
