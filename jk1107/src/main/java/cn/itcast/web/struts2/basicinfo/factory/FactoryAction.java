package cn.itcast.web.struts2.basicinfo.factory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import cn.itcast.entity.Factory;
import cn.itcast.entity.dao.FactoryDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @Description:	生产厂家信息的维护
 * @Author:			nutony
 * @Company:		http://java.itcast.cn
 * @CreateDate:		2014-2-24
 */
public class FactoryAction extends _BaseStruts2Action implements ModelDriven<Factory> {
	private Factory model = new Factory();
	public Factory getModel() {
		return model;
	}

	//列表
	public String list(){
		//怎么获取dao
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> dataList = oDao.find("from Factory o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
	
	//转向新增页面
	public String tocreate(){
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate(){
		//准备数据
		FactoryDAO oDao = (FactoryDAO)this.getDao("daoFactory");
		Factory obj = (Factory)oDao.get(Factory.class, model.getId());			//查出当前的厂家
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pupdate";
	}
	
	//转向查看页面
	public String toview(){
		//准备数据
		FactoryDAO oDao = (FactoryDAO)this.getDao("daoFactory");
		Factory obj = (Factory)oDao.get(Factory.class, model.getId());			//查出当前的厂家
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pview";
	}
	
	//保存，新增和修改
	public String savemodel(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		if(model.getId()==null){			//新增
			model.setState(1);				//1启用0停用
		}
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//保存，新增和修改
	public String save(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		Factory f = null;
		if(model.getId()==null){			//新增
			f = new Factory();
			f.setState(1);					//1启用0停用
		}else{
			f = (Factory) oDao.get(Factory.class, model.getId());		//修改
		}
		f.setCtype(model.getCtype());
		f.setFullName(model.getFullName());
		f.setFactoryName(model.getFactoryName());
		f.setContractor(model.getContractor());
		f.setPhone(model.getPhone());
		f.setMobile(model.getMobile());
		f.setFax(model.getFax());
		f.setInspector(model.getInspector());
		f.setCnote(model.getCnote());

		oDao.saveOrUpdate(f);
		return list();
	}
	
	//删除
	public String deleteone(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		oDao.delete(model.getId(), Factory.class);
		
		return list();
	}
	
	//删除多条
	public String delete(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		oDao.deleteAllById(ids, Factory.class);
		
		return list();
	}
	
	//启用
	public String start(){
		this.changeState(1);
		return list();
	}
	
	//停用
	public String stop(){
		this.changeState(0);
		return list();
	}
	
	//修改状态
	private void changeState(Integer value){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		String[] ids = model.getId().split(", ");			//以逗号空格分隔
		Set oSet = new HashSet();
		for(String id : ids){
			Factory f = (Factory) oDao.get(Factory.class, id);
			f.setState(value);				//1启用0停用
			
			oSet.add(f);
		}
		oDao.saveOrUpdateAll(oSet);			//批量保存
	}
	
	//打印
	public void printSample() throws IOException{
		//打印内容到excel
		/*
		 * 操作步骤：
		 * 1、创建一个工作簿
		 * 2、创建一个工作表
		 * 3、创建一个行对象
		 * 4、创建一个单元格，需要制定它的列
		 * 5、写入内容
		 * 6、设置字体、样式
		 * 7、保存
		 * 8、关闭
		 * 
		 */
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet();
		HSSFRow nRow = sheet.createRow(0);				//第一行，下标从0开始
		HSSFCell nCell = nRow.createCell((short)1);		//第二列
		nCell.setCellValue("传智播客万年长!");
		
		FileOutputStream os = new FileOutputStream(new File("d:\\factory.xls"));	//处理文件时，必须绝对路径
		wb.write(os);
		os.close();
	}
	
	//打印 多个单元格，多个样式
	public void print2() throws IOException{
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet();
		
		HSSFRow nRow = sheet.createRow(4);
		HSSFCell nCell = nRow.createCell((short)3);
		HSSFCellStyle curStyle = wb.createCellStyle();				//创建一个样式对象
		HSSFFont curFont = wb.createFont();							//创建一个字体对象
		
		curFont.setFontName("微软雅黑");								//设置字体
		curFont.setFontHeightInPoints((short)36);					//设置字体大小
		
		curStyle.setFont(curFont);									//绑定字体对象
		
		HSSFCellStyle curStyle1 = wb.createCellStyle();
		HSSFFont curFont1 = wb.createFont();
		curFont1.setFontHeightInPoints((short)16);
		curStyle1.setFont(curFont1);
		
		curStyle1.setAlignment(HSSFCellStyle.ALIGN_CENTER);					//横向居中
		curStyle1.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//纵向居中
		
		
		nCell.setCellValue("传智播客万年长!");
		nCell.setCellStyle(curStyle);								//应用样式
		
		//创建一新的单元格
		HSSFRow nRow1 = sheet.createRow(5);
		HSSFCell nCell1 = nRow1.createCell((short)6);
		
		nCell1.setCellValue("http://java.itcast.cn");
		nCell1.setCellStyle(curStyle1);
		
		
		HSSFRow nRow2 = sheet.createRow(9);
		HSSFCell nCell2 = nRow2.createCell((short)3);
		nCell2.setCellValue("老总千岁");
		nCell2.setCellStyle(curStyle);
		
		
		FileOutputStream os = new FileOutputStream(new File("d:\\factory.xls"));	//处理文件时，必须绝对路径
		wb.write(os);
		os.close();
	}
	
	//打印
	public void print3() throws IOException{
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet();
		
		HSSFRow nRow = sheet.createRow(4);
		HSSFCell nCell = nRow.createCell((short)3);
		
		nCell.setCellValue("传智播客万年长!");
		nCell.setCellStyle(this.tilteStyle(wb));								//应用样式
		
		//创建一新的单元格
		nRow = sheet.createRow(5);
		nCell = nRow.createCell((short)6);
		
		nCell.setCellValue("http://java.itcast.cn");
		nCell.setCellStyle(this.urlSytle(wb));
		
		
		nRow = sheet.createRow(9);
		nCell = nRow.createCell((short)3);
		nCell.setCellValue("老总千岁!!");
		nCell.setCellStyle(this.tilteStyle(wb));
		
		
		FileOutputStream os = new FileOutputStream(new File("d:\\factory.xls"));	//处理文件时，必须绝对路径
		wb.write(os);
		os.close();
	}	

	//打印 生产厂家通讯录
	public void print() throws IOException{
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet();
		
		int rowNo = 0;									//行号
		short colNo = 0;								//列号
		
		HSSFRow nRow = sheet.createRow(rowNo++);
		HSSFCell nCell;
		
		//设置标题
		String[] title = new String[]{"类型","全称","简称","联系人","电话","手机","传真","验货员","备注"};
		nRow.setHeightInPoints(25);						//设置行高
		
		for(int i=0;i<title.length;i++){
			nCell = nRow.createCell((short)i);
			nCell.setCellValue(title[i]);
			nCell.setCellStyle(this.tilteStyle(wb));
		}
		
		sheet.setColumnWidth((short)1, (short)(24*256));					//设置列宽
		
		//查询厂家表中的信息，只获取状态为启用的记录
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		List<Factory> oList = oDao.find("from Factory o where o.state=1");			//启用的记录
		for(Factory f : oList){
//			if(rowNo>5){
//				break;				//跳出循环
//			}
			colNo = 0;				//初始化
			
			nRow = sheet.createRow(rowNo++);
			nRow.setHeightInPoints(20);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getCtype());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getFullName());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getFactoryName());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getContractor());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getPhone());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getMobile());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getFax());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getInspector());
			nCell.setCellStyle(this.textSytle(wb));
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(f.getCnote());
			nCell.setCellStyle(this.textSytle(wb));
		}
		
		FileOutputStream os = new FileOutputStream(new File("d:\\factory.xls"));	//处理文件时，必须绝对路径
		wb.write(os);
		os.close();
	}	
	
	//标题样式
	public HSSFCellStyle tilteStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();				//创建一个样式对象
		HSSFFont curFont = wb.createFont();							//创建一个字体对象
		
		curFont.setFontName("微软雅黑");								//设置字体
		curFont.setFontHeightInPoints((short)11);					//设置字体大小
		curStyle.setFont(curFont);									//绑定字体对象
		
		curStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);					//横向居中
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//纵向居中
		
		curStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);					//画细线
		curStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);				//画细线
		curStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);					//画细线
		curStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);					//画细线	
		
		return curStyle;
	}
	
	//链接样式
	public HSSFCellStyle urlSytle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();				//创建一个样式对象
		HSSFFont curFont = wb.createFont();							//创建一个字体对象
		
		curFont.setFontHeightInPoints((short)16);					//设置字体大小
		curStyle.setFont(curFont);									//绑定字体对象
		
		curStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);					//横向居中
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//纵向居中
		
		return curStyle;
	}
	
	//文字样式
	public HSSFCellStyle textSytle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();				//创建一个样式对象
		
		curStyle.setAlignment(HSSFCellStyle.ALIGN_LEFT);					//横向居中
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//纵向居中
		
		curStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);					//画细线
		curStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);				//画细线
		curStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);					//画细线
		curStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);					//画细线
		
		return curStyle;
	}
	
}
