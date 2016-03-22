package cn.itcast.web.struts2.baseinfo.syscode;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.itcast.entity.SysCode;
import cn.itcast.entity.dao.SysCodeDAO;
import cn.itcast.web.common.util.Convert;
import cn.itcast.web.common.util.Tree;
import cn.itcast.web.common.util.UtilFuns;
import cn.itcast.web.common.util.file.ExportExcel;
import cn.itcast.web.struts2._BaseStruts2Action;

public class SysCodeAction extends _BaseStruts2Action {
	private String mainId;
	public String save() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String maxId = "";
		int addNum = 0;	//新增记录个数
		String parentId = request.getParameter("mainId");				//父节点
		this.mainId = parentId;											//记录当前节点，否则保存后会丢失
		
		String _delIds = request.getParameter("delIds");
		String[] delIds = null;
		
		String[] mr_changed = request.getParameterValues("mr_changed");	//是否此条记录已经被修改 0否1是
		
		String[] id = request.getParameterValues("id");
		String[] name = request.getParameterValues("name");
		String[] ico = request.getParameterValues("ico");
		String[] state = request.getParameterValues("state");
		String[] quoteNum = request.getParameterValues("quoteNum");
		String[] cnote = request.getParameterValues("cnote");
		String[] orderNo = request.getParameterValues("orderNo");

		Set oSet = new HashSet();
		
		SysCode obj = null;
		SysCodeDAO oDao = (SysCodeDAO) this.getDao("daoSysCode");
		SysCode parentSysCode = (SysCode)oDao.get(SysCode.class, parentId);

		if(orderNo!=null){							//删除全部节点的情况
			for(int h=0;h<orderNo.length;h++){
				if(UtilFuns.isEmpty(id[h])){		//表示有新增记录
					addNum++;
					maxId = maxSysCodeId(parentId, oDao);
				}
			}
			if(addNum>0){
				//测试是否编号还有新增记录的需求。例如现在maxId编号是97，只能在新增2条记录，可用户新增了5条。超过时，方法中将抛出异常。
				newSysCodeId(maxId,addNum);
				addNum = 0;

				parentSysCode.setIsLeaf("0");		//如果有新增的节点，父节点变为树枝，非叶子节点
			}
		
			for(int h=0;h<orderNo.length;h++){
				if(UtilFuns.isNotEmpty(id[h])){
					if(!mr_changed[h].equals("1")){
						continue;											//修改时,如果记录值用户未改变,则对此条记录不进行操作,以加快处理速度;
					}
					obj = (SysCode)oDao.get(SysCode.class, id[h]);
				}else{
					addNum++;
					obj = new SysCode();
					obj.setId(newSysCodeId(maxId,addNum));	
					obj.setLayerNum(parentSysCode.getLayerNum()+1);			//新加节点层数+1
					obj.setIsLeaf("1");										//叶子节点
				}
				
				obj.setParentSysCode(parentSysCode);
				obj.setParentName(parentSysCode.getName());
				
				obj.setName(name[h]);
				obj.setIco(ico[h]);
				obj.setState(state[h]);
				obj.setQuoteNum(Integer.parseInt(quoteNum[h]));
				obj.setCnote(cnote[h]);
				
				obj.setOrderNo(Integer.parseInt(orderNo[h]));
				
				oSet.add(obj);
			}
		}
		
		if(UtilFuns.isNotEmpty(_delIds)){
			delIds = UtilFuns.splitStr(_delIds, ",");

			StringBuffer hqlBuf = new StringBuffer();
			
			hqlBuf.delete(0, hqlBuf.length());					//clear
			hqlBuf.append("delete from SysCode where (");
			for(int i=0;i<delIds.length;i++){
				hqlBuf.append(" SYS_CODE_ID like '").append(delIds[i]).append("%' or ");
			}
			hqlBuf.delete(hqlBuf.length()-4, hqlBuf.length());
			hqlBuf.append(")");
			
			oDao.deleteByHql(hqlBuf.toString());
		}
		if(oSet!=null && oSet.size()>0){
			oDao.saveOrUpdateAll(oSet);							//保存数据
		}
		
		
		return toedit();
	}
	
	//ajax获取数据，并加载
	public void ajaxget() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String parentId = request.getParameter("mainId");				//父节点
		if(UtilFuns.isEmpty(parentId)){
			parentId = "01";											//根节点ID 从厂家类型开始
		}
		this.mainId = parentId;
		
		StringBuffer sBuf = new StringBuffer();
		UtilFuns utilFuns = new UtilFuns();
		
		SysCodeDAO oDao = (SysCodeDAO) this.getDao("daoSysCode");
		SysCode subObj = null;
		List aList = oDao.find("from SysCode o where o.parentSysCode.id='"+parentId+"' order by orderNo");
		
		
		if(aList!=null && aList.size()>0) {
			for (int i = 0; i < aList.size(); i++) {
				subObj = (SysCode)aList.get(i);
				sBuf.append("addTRRecord(\"resultTable\",");
				sBuf.append("\"").append(subObj.getId()).append("\",");
				sBuf.append("\"").append(utilFuns.convertNull(subObj.getName())).append("\",");
				sBuf.append("\"").append(utilFuns.convertNull(subObj.getIco())).append("\",");
				sBuf.append("\"").append(subObj.getState()).append("\",");
				sBuf.append("\"").append(utilFuns.convertNull(subObj.getCnote())).append("\",");
				sBuf.append("\"").append(subObj.getQuoteNum()).append("\",");
				sBuf.delete(sBuf.length()-1, sBuf.length());
				sBuf.append(");");
			}
		}else{
			sBuf.append("addTRRecord(\"resultTable\", \"\",\"\",\"\",\"\",\"\",\"\");");		//没数据时增加一个空行
		}
		
		
		//ajax return value
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");					//设定字符集，不然返回字符乱码
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		out.write(sBuf.toString());
		out.flush();
		out.close();
		
	}
	
	
	public String toedit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		if(this.mainId==null){
			this.mainId = "01";
		}
		request.setAttribute("mainId",this.mainId);				//根节点ID
		
		Convert convert = new Convert();
		SysCodeDAO oDao = (SysCodeDAO) this.getDao("daoSysCode");
		
		//准备树代码 select SYS_CODE_ID,PARENT_ID,NAME from SYS_CODE_B order by PARENT_ID,ORDER_NO
		Tree tree = new Tree();
		List treeList = convert.toStringList(oDao.find("select o.id,o.parentSysCode.id,o.name from SysCode o where o.isLeaf=0 order by o.parentSysCode.id,o.orderNo"));		//o.isLeaf=0非叶子节点
		request.setAttribute("dtree",tree.getTreeForEdit("syscode", treeList, "../../", 2));		
		
		return "pedit";
	}
	
	//导出excel
	public String print() throws Exception{
		UtilFuns utilFuns = new UtilFuns();
		SysCodeDAO oDao = (SysCodeDAO)this.getDao("daoSysCode");
		List dataList = oDao.find("select o.id,o.name from SysCode o");
		List<String> aList = new ArrayList();
		
		ExportExcel ee = new ExportExcel();
		for(int i=0;i<dataList.size();i++){
			Object ele = dataList.get(i);
			Object[] subele = (Object[])ele;
			for(int j=0;j<subele.length;j++){
				aList.add(utilFuns.convertNull(subele[j]));
			}
		}
		ee.setTitles("编号,标题");
		ee.setTitle("系统代码表");
		ee.print(aList);
		
		return null;
	}
	
	
	//生成新的编号 注意:此处用于SysCode,编码为每2位代表一层,这样一层最多99个节点
	private String maxSysCodeId(String id, SysCodeDAO oDao) throws Exception{
		String sMaxId = oDao.findString("select max(o.id) from SysCode o where o.parentSysCode.id='"+id+"'");		//取得当前最大的编号
		if(UtilFuns.isEmpty(sMaxId)){
			sMaxId = id + "00";		//当没有叶子节点时,返回第一个编号
		}
		return sMaxId;
	}
	
	private String newSysCodeId(String maxId, int no) throws Exception{
		String sMaxId = "";
		String sLastId = maxId.substring(maxId.length()-2);
		if((Integer.parseInt(sLastId)+no)>=99){
			throw new Exception("节点数已经超过99个,将无法产生新编号!");
		}
		
		long iMaxId = Long.parseLong("1"+ maxId);		//使0前导的转换为整数时不会丢失前面的0
		iMaxId += no;									//第几次调用就累加几，这样一次增加多个记录时，就方便产生多个编号
		sMaxId = String.valueOf(iMaxId);
		sMaxId = sMaxId.substring(1);					//去掉上面加的1
		return sMaxId;
	}	
}
