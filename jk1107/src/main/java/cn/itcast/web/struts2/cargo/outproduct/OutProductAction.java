package cn.itcast.web.struts2.cargo.outproduct;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.ExtCproduct;
import cn.itcast.entity.dao.ContractProductDAO;
import cn.itcast.web.common.util.DownloadBase;
import cn.itcast.web.common.util.UtilFuns;
import cn.itcast.web.struts2._BaseStruts2Action;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-2-27
 */
public class OutProductAction extends _BaseStruts2Action  {
	private String inputDate;			//统计年月
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}
	
	//转向编辑页面
	public String toedit(){
		return "pedit";
	}
	
	//打印
	public void print() throws FileNotFoundException, IOException, ParseException{
		/*
		 * 操作步骤：
		 * 1、取inputDate月的货物信息
		 * 2、循环输出
		 * 3、从模板中读取样式，设置单元格的样式
		 * 
		 */
		
		String path = ServletActionContext.getRequest().getRealPath("/") + "make/xlsprint/";		//服务器的路径
		
		ContractProductDAO cpDao = (ContractProductDAO) this.getDao("daoContractProduct");
		List<ContractProduct> cpList = cpDao.find("from ContractProduct o where o.contract.shipTime like '" + this.inputDate + "%'");			//按船期月记录
		
		int rowNo = 2;				//行号
		short colNo = 1;			//列号
		
		HSSFWorkbook wb = new HSSFWorkbook(new FileInputStream(new File(path + "txOutProduct.xls")));	//打开模板文件
		HSSFSheet sheet = wb.getSheetAt(0);			//得到第一个工作表
		HSSFRow nRow = null;
		HSSFCell nCell = null;
		
		
		//从模板中获取的样式
		nRow = sheet.getRow(2);				//获得一个行对象
		
		nCell = nRow.getCell((short)1);	//获得一个单元格对象
		HSSFCellStyle customNameStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)2);	//获得一个单元格对象
		HSSFCellStyle contractNoStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)3);	//获得一个单元格对象
		HSSFCellStyle productNoStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)4);	//获得一个单元格对象
		HSSFCellStyle cnumberStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)5);	//获得一个单元格对象
		HSSFCellStyle factoryStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)6);	//获得一个单元格对象
		HSSFCellStyle extStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)7);	//获得一个单元格对象
		HSSFCellStyle deliveryStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		nCell = nRow.getCell((short)9);	//获得一个单元格对象
		HSSFCellStyle tradeStyle = nCell.getCellStyle();		//获得指定单元格的样式
		
		//设置标题
		nRow = sheet.getRow(0);
		nCell = nRow.getCell((short)1);
		nCell.setCellValue(inputDate.replaceFirst("-0", "-").replaceFirst("-", "年") + "月份出货表");		//2011-12,2011-09
		
		String _extName = "";
		
		for(ContractProduct cp : cpList){
			colNo = 1;					//初始化
			
			nRow = sheet.createRow(rowNo++);
			nRow.setHeightInPoints(24);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getContract().getCustomName());
			nCell.setCellStyle(customNameStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getContract().getContractNo());
			nCell.setCellStyle(contractNoStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getProductNo());
			nCell.setCellStyle(productNoStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getCnumber()+cp.getPackingUnit());
			nCell.setCellStyle(cnumberStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getFactory().getFactoryName());
			nCell.setCellStyle(factoryStyle);
			
			nCell = nRow.createCell(colNo++);
			_extName = "";
			for(ExtCproduct ep : cp.getExtCproducts()){
				_extName += ep.getTypeName() + "\n";
			}
			_extName = UtilFuns.delLastChar(_extName);
			if(_extName.equals("")){
				_extName = "无";
			}
			nCell.setCellValue(_extName);				//附件
			nCell.setCellStyle(extStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(UtilFuns.dateTimeFormat(cp.getContract().getDeliveryPeriod())); 	//将日期转换为字符串，格式为：YYYY-MM-DD
			nCell.setCellStyle(deliveryStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(UtilFuns.dateTimeFormat(cp.getContract().getShipTime()));
			nCell.setCellStyle(deliveryStyle);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(cp.getContract().getTradeTerms());
			nCell.setCellStyle(tradeStyle);
		}
		
		
		//7.生成excel文件
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();			//生成流对象
		wb.write(byteArrayOutputStream);								//将excel写入流

		//工具类，封装弹出下载框：		
		String outFile = "出货表.xls";
		DownloadBase down = new DownloadBase();
		HttpServletResponse response = ServletActionContext.getResponse();
		down.download(byteArrayOutputStream, response, outFile);
	}
}
