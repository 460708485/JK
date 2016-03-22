package cn.itcast.web.print;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.Region;
import org.apache.struts2.ServletActionContext;

import cn.itcast.entity.Contract;
import cn.itcast.entity.ContractProduct;
import cn.itcast.entity.dao.ContractDAO;
import cn.itcast.web.common.util.DownloadBase;
import cn.itcast.web.common.util.UtilFuns;
import cn.itcast.web.common.util.file.PoiUtil;

public class ContractPrint{

	/*
	 * response 打印输出到response中，直接下载
	 * */
	
	public void print(String contractId, ContractDAO cDao, HttpServletResponse response) throws Exception{
		//相同厂家的信息一起打印
		List<ContractProduct> oList = cDao.find("from ContractProduct o where o.contract.id='"+contractId+"' order by o.factory.id,o.orderNo");
		
		UtilFuns utilFuns = new UtilFuns();
		
		String rootPath = ServletActionContext.getRequest().getRealPath("/");
		
		String tempXlsFile = rootPath + "make/xlsprint/tCONTRACT.xls";		//获取模板文件

		
		Contract contract = (Contract)cDao.get(Contract.class, contractId);		//获得合同信息
		
		//填写每页的内容，之后在循环每页读取打印
		Map<String,String> pageMap = null;
		List<Map> pageList = new ArrayList();			//打印页
		
		ContractProduct oProduct = null;
		String stars = "";
		for(int j=0;j<contract.getImportNum();j++){		//重要程度
			stars += "★";
		}
		
		String oldFactory = "";
		for(int i=0;i<oList.size();i++){
			oProduct = oList.get(i);	//获得货物
			pageMap = new HashMap();	//每页的内容
			
			pageMap.put("Offeror", "收 购 方：" + contract.getOfferor());
			pageMap.put("Factory", "生产工厂：" + oProduct.getFactory().getFullName());
			pageMap.put("ContractNo", "合 同 号：" + contract.getContractNo());
			pageMap.put("Contractor", "联 系 人：" + oProduct.getFactory().getContractor());
			pageMap.put("SigningDate", "签单日期："+UtilFuns.formatDateTimeCN(UtilFuns.dateTimeFormat(contract.getSigningDate())));
			pageMap.put("Phone", "电    话：" + oProduct.getFactory().getPhone());
			pageMap.put("InputBy", "制单：" + contract.getInputBy());
			pageMap.put("CheckBy", "审单："+ utilFuns.fixSpaceStr(contract.getCheckBy(),26)+"验货员："+utilFuns.convertNull(oProduct.getFactory().getInspector()));
			pageMap.put("Remark", "  "+contract.getRemark());
			pageMap.put("Request", "  "+contract.getCrequest());
			
			pageMap.put("ProductImage", oProduct.getProductImage());
			pageMap.put("ProductDesc", oProduct.getProductDesc());
			pageMap.put("Cnumber", String.valueOf(oProduct.getCnumber().doubleValue()));
			if(oProduct.getPackingUnit().equals("PCS")){
				pageMap.put("PackingUnit", "只");
			}else if(oProduct.getPackingUnit().equals("SETS")){
				pageMap.put("PackingUnit", "套");
			}
			pageMap.put("Price", String.valueOf(oProduct.getPrice().doubleValue()));
			pageMap.put("ProductNo", oProduct.getProductNo());
			
			oldFactory = oProduct.getFactory().getFactoryName();
			
			if(contract.getPrintStyle().equals("2")){
				i++;	//读取第二个货物信息
				if(i<oList.size()){
					oProduct = oList.get(i);
					
					if(oProduct.getFactory().getFactoryName().equals(oldFactory)){	//厂家不同另起新页打印，除去第一次的比较
						
						pageMap.put("ProductImage2", oProduct.getProductImage());
						pageMap.put("ProductDesc2", oProduct.getProductDesc());
						pageMap.put("Cnumber2", String.valueOf(oProduct.getCnumber().doubleValue()));
						if(oProduct.getPackingUnit().equals("PCS")){
							pageMap.put("PackingUnit2", "只");
						}else if(oProduct.getPackingUnit().equals("SETS")){
							pageMap.put("PackingUnit2", "套");
						}						
						pageMap.put("Price2", String.valueOf(oProduct.getPrice().doubleValue()));
						//pageMap.put("Amount2", String.valueOf(oProduct.getAmount().doubleValue()));			//在excel中金额采用公式，所以无需准备数据
						pageMap.put("ProductNo2", oProduct.getProductNo());
					}else{
						i--;	//tip:list退回
					}
				}else{
					pageMap.put("ProductNo2", null);	//后面依据此判断是否有第二个货物
				}
			}
			
			pageMap.put("ContractDesc", stars+" 货物描述");			//重要程度 + 货物描述
			
			pageList.add(pageMap);
		}
		
		int cellHeight = 96;	//一个货物的高度			用户需求，一个货物按192高度打印，后来又嫌难看，打印高度和2款高度一样。
//		if(contract.getPrintStyle().equals("2")){
//			cellHeight = 96;	//两个货物的高度
//		}
		
		PoiUtil poiUtil = new PoiUtil();
		HSSFWorkbook wb = new HSSFWorkbook(new FileInputStream(tempXlsFile));	//打开excel文件
		HSSFFont defaultFont10 = poiUtil.defaultFont10(wb);		//设置字体
		HSSFFont defaultFont12 = poiUtil.defaultFont12(wb);		//设置字体
		HSSFFont blackFont = poiUtil.blackFont12(wb);			//设置字体
		Short rmb2Format = poiUtil.rmb2Format(wb);				//设置格式
		Short rmb4Format = poiUtil.rmb4Format(wb);				//设置格式
		

		HSSFSheet sheet = wb.getSheetAt(0);				//选择第一个工作簿
		wb.setSheetName(0, "购销合同");					//设置工作簿的名称


		//sheet.setDefaultColumnWidth((short) 20); 		// 设置每列默认宽度
		
//		POI分页符有BUG，必须在模板文件中插入一个分页符，然后再此处删除预设的分页符；最后在下面重新设置分页符。
//		sheet.setAutobreaks(false);
//		int iRowBreaks[] = sheet.getRowBreaks();
//		sheet.removeRowBreak(3);
//		sheet.removeRowBreak(4);
//		sheet.removeRowBreak(5);
//		sheet.removeRowBreak(6);
		
		Region region = null;
		HSSFPatriarch patriarch = sheet.createDrawingPatriarch();		//add picture

		HSSFRow nRow = null;
		HSSFCell nCell   = null;
		int curRow = 0;
		
		//打印每页
		Map<String,String> printMap = null;
		for(int p=0;p<pageList.size();p++){
			printMap = pageList.get(p);
			
			if(p>0){
				sheet.setRowBreak(curRow++);	//在第startRow行设置分页符
			}
			
			
			//设置logo图片
			poiUtil.setPicture(wb, patriarch, rootPath+"make/xlsprint/logo.jpg", curRow, 2, curRow+4, 2);
			
			//header
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(21);
			
			nCell   = nRow.createCell((short)(3));
			nCell.setCellValue("SHAANXI");
			nCell.setCellStyle(headStyle(wb));

			//header
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(41);
			
			nCell   = nRow.createCell((short)(3));
			nCell.setCellValue("     JK INTERNATIONAL ");
			nCell.setCellStyle(tipStyle(wb));

			curRow++;
			
			//header
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(20);
			
			nCell   = nRow.createCell((short)(1));
			nCell.setCellValue("                 西经济技术开发区西城一路27号无迪大厦19楼");
			nCell.setCellStyle(addressStyle(wb));
			
			//header
			nCell   = nRow.createCell((short)(6));
			nCell.setCellValue(" CO., LTD.");
			nCell.setCellStyle(ltdStyle(wb));

			//header
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(15);
			
			nCell   = nRow.createCell((short)(1));
			nCell.setCellValue("                   TEL: 0086-29-86339371  FAX: 0086-29-86303310               E-MAIL: ijackix@glass.cn");
			nCell.setCellStyle(telStyle(wb));
			
			//line
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(7);
			
			poiUtil.setLine(wb, patriarch, curRow, 2, curRow, 8);	//draw line

			//header
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(30);
			
			nCell   = nRow.createCell((short)(4));
			nCell.setCellValue("    购   销   合   同");
			nCell.setCellStyle(titleStyle(wb));
			
			//Offeror
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(20);
			
			nCell   = nRow.createCell((short)(1));
			nCell.setCellValue(printMap.get("Offeror"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));

			//Facotry
			nCell   = nRow.createCell((short)(5));
			nCell.setCellValue(printMap.get("Factory"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));
			
			//ContractNo
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(20);
			
			nCell   = nRow.createCell((short)1);
			nCell.setCellValue(printMap.get("ContractNo"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));
			
			//Contractor
			nCell  = nRow.createCell((short)5);
			nCell.setCellValue(printMap.get("Contractor"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));
			
			//SigningDate
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(20);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue(printMap.get("SigningDate"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));
			
			//Phone
			nCell = nRow.createCell((short)5);
			nCell.setCellValue(printMap.get("Phone"));
			nCell.setCellStyle(poiUtil.titlev12(wb, blackFont));
			
			
			//画单元格的框,否则下面合并后底部无边线
			int endk = 0;
			if(contract.getPrintStyle().equals("1") || UtilFuns.isEmpty(printMap.get("ProductNo2"))){	//一个货物
				endk = 2;
			}else if(contract.getPrintStyle().equals("2")){
				endk = 4;
			}
			
			for(int k=-1;k<endk;k++){
				nRow = sheet.createRow(curRow+1+k);
				for(int j=1;j<9;j++){
					region = new Region(curRow+1, (short)(1), curRow+1, (short)3);	//横向合并单元格 
					sheet.addMergedRegion(region);
					
					nCell = nRow.createCell((short)j);
					nCell.setCellStyle(poiUtil.notehv10_BorderThin(wb, defaultFont10));
				}
			}
			
			//importNum
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(24);
			
			region = new Region(curRow-1, (short)(1), curRow-1, (short)3);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue("产品");
			nCell.setCellStyle(thStyle(wb));		
			
			nCell = nRow.createCell((short)4);
			nCell.setCellValue(printMap.get("ContractDesc"));
			nCell.setCellStyle(thStyle(wb));	
			
			region = new Region(curRow-1, (short)(5), curRow-1, (short)6);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nCell = nRow.createCell((short)5);
			nCell.setCellValue("数量");
			nCell.setCellStyle(thStyle(wb));						
			
			nCell = nRow.createCell((short)7);
			nCell.setCellValue("单价");
			nCell.setCellStyle(thStyle(wb));						
			
			nCell = nRow.createCell((short)8);
			nCell.setCellValue("总金额");
			nCell.setCellStyle(thStyle(wb));						
			
			if(UtilFuns.isNotEmpty(printMap.get("ProductImage"))){
				System.out.println(printMap.get("ProductImage"));
				poiUtil.setPicture(wb, patriarch, rootPath+"ufiles/jquery/"+printMap.get("ProductImage"), curRow, 1, curRow+1, 3);
			}
			
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(cellHeight);
			
			//ProductDesc
			region = new Region(curRow-1, (short)(4), curRow, (short)4);	//纵向合并单元格 
			sheet.addMergedRegion(region);

			
			nCell = nRow.createCell((short)4);
			nCell.setCellValue(printMap.get("ProductDesc"));
			nCell.setCellStyle(poiUtil.notehv10_BorderThin(wb, defaultFont10));	
			
			//Cnumber
			region = new Region(curRow-1, (short)(5), curRow, (short)5);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nCell = nRow.createCell((short)5);
			nCell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
			nCell.setCellValue(Double.parseDouble(printMap.get("Cnumber")));
			nCell.setCellStyle(poiUtil.numberrv10_BorderThin(wb, defaultFont10));	
			
			//Unit
			region = new Region(curRow-1, (short)(6), curRow, (short)6);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nCell = nRow.createCell((short)6);
			nCell.setCellValue(printMap.get("PackingUnit"));
			nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));	
			
			//Price
			region = new Region(curRow-1, (short)(7), curRow, (short)7);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nCell = nRow.createCell((short)7);
			nCell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
			nCell.setCellValue(Double.parseDouble(printMap.get("Price")));
			nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));
			
			//Amount
			region = new Region(curRow-1, (short)(8), curRow, (short)8);	//纵向合并单元格 
			sheet.addMergedRegion(region);
			
			nRow = sheet.createRow(curRow-1);
			nRow.setHeightInPoints(cellHeight);
			
			nCell = nRow.createCell((short)8);
			if(UtilFuns.isNotEmpty(printMap.get("Cnumber")) && UtilFuns.isNotEmpty(printMap.get("Price"))){
				nCell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
				nCell.setCellFormula("F"+String.valueOf(curRow)+"*H"+String.valueOf(curRow));
			}
			nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));
			
			curRow++;
			
			region = new Region(curRow-1, (short)(1), curRow-1, (short)3);	//横向合并单元格 
			sheet.addMergedRegion(region);
			
			//ProductNo
			nRow = sheet.createRow(curRow-1);
			nRow.setHeightInPoints(24);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue(printMap.get("ProductNo"));
			nCell.setCellStyle(poiUtil.notecv10_BorderThin(wb, defaultFont10));
			
			if(contract.getPrintStyle().equals("2") && UtilFuns.isNotEmpty(printMap.get("ProductNo2"))){
				
				curRow++;
				region = new Region(curRow-1, (short)(1), curRow-1, (short)3);	//横向合并单元格 
				sheet.addMergedRegion(region);
				
				if(UtilFuns.isNotEmpty(printMap.get("ProductImage2"))){
					System.out.println(printMap.get("ProductImage2"));
					poiUtil.setPicture(wb, patriarch, rootPath+"ufiles/jquery/"+printMap.get("ProductImage2"), curRow-1, 1, curRow, 3);
				}
				
				//ProductDesc
				region = new Region(curRow-1, (short)(4), curRow, (short)4);	//纵向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(cellHeight);
				
				nCell = nRow.createCell((short)4);
				nCell.setCellValue(printMap.get("ProductDesc2"));
				nCell.setCellStyle(poiUtil.notehv10_BorderThin(wb, defaultFont10));	
				
				//Cnumber
				region = new Region(curRow-1, (short)(5), curRow, (short)5);	//纵向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(cellHeight);
				
				nCell = nRow.createCell((short)5);
				nCell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
				if(UtilFuns.isNotEmpty(printMap.get("Cnumber2"))){
					nCell.setCellValue(Double.parseDouble(printMap.get("Cnumber2")));
				}
				nCell.setCellStyle(poiUtil.numberrv10_BorderThin(wb, defaultFont10));	
				
				//Unit
				region = new Region(curRow-1, (short)(6), curRow, (short)6);	//纵向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(cellHeight);
				
				nCell = nRow.createCell((short)6);
				nCell.setCellValue(printMap.get("PackingUnit2"));
				nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));
				
				//Price
				region = new Region(curRow-1, (short)(7), curRow, (short)7);	//纵向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(cellHeight);
				
				nCell = nRow.createCell((short)7);
				nCell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
				if(UtilFuns.isNotEmpty(printMap.get("Price2"))){
					nCell.setCellValue(Double.parseDouble(printMap.get("Price2")));
				}
				nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));
				
				//Amount
				region = new Region(curRow-1, (short)(8), curRow, (short)8);	//纵向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(cellHeight);
				
				nCell = nRow.createCell((short)8);
				if(UtilFuns.isNotEmpty(printMap.get("Cnumber2")) && UtilFuns.isNotEmpty(printMap.get("Price2"))){
					nCell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
					nCell.setCellFormula("F"+String.valueOf(curRow)+"*H"+String.valueOf(curRow));
				}
				nCell.setCellStyle(poiUtil.moneyrv10_BorderThin(wb, defaultFont10, rmb4Format));
				
				curRow++;
				
				region = new Region(curRow-1, (short)(1), curRow-1, (short)3);	//横向合并单元格 
				sheet.addMergedRegion(region);
				
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(24);
				
				nCell = nRow.createCell((short)1);
				nCell.setCellValue(printMap.get("ProductNo2"));
				nCell.setCellStyle(poiUtil.notecv10_BorderThin(wb, defaultFont10));					
			}
			
			
//			curRow++;
//			nRow = sheet.createRow(curRow-1);
//			nRow.setHeightInPoints(50);
//			
//			curRow++;
//			nRow = sheet.createRow(curRow-1);
//			nRow.setHeightInPoints(50);
			
			//InputBy
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(24);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue(printMap.get("InputBy"));
			nCell.setCellStyle(poiUtil.bnormalv12(wb,defaultFont12));
			
			//CheckBy+inspector
			
			nCell = nRow.createCell((short)4);
			nCell.setCellValue(printMap.get("CheckBy"));
			nCell.setCellStyle(poiUtil.bnormalv12(wb,defaultFont12));
			
			//if(contract.getPrintStyle().equals("2") && UtilFuns.isNotEmpty(printMap.get("ProductNo2"))){
				
				nCell = nRow.createCell((short)7);
				nCell.setCellValue("总金额：");
				nCell.setCellStyle(bcv12(wb));
				
				//TotalAmount
				nRow = sheet.createRow(curRow-1);
				nRow.setHeightInPoints(24);
				if(UtilFuns.isNotEmpty(printMap.get("Cnumber"))&&UtilFuns.isNotEmpty(printMap.get("Price"))){
					nCell  = nRow.createCell((short)8);
					nCell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
					nCell.setCellFormula("SUM(I"+String.valueOf(curRow-4)+":I"+String.valueOf(curRow-1)+")");
					nCell.setCellStyle(poiUtil.moneyrv12_BorderThin(wb,defaultFont12,rmb2Format));		
				}
			//}
			
			
			//note
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(21);
			
			nCell = nRow.createCell((short)2);
			nCell.setCellValue(printMap.get("Remark"));
			nCell.setCellStyle(noteStyle(wb));			
			
			//Request
			region = new Region(curRow, (short)(1), curRow, (short)8);	//指定合并区域 
			sheet.addMergedRegion(region);
			
			nRow = sheet.createRow(curRow++);
			float height = poiUtil.getCellAutoHeight(printMap.get("Request"), 12f);		//自动高度
			nRow.setHeightInPoints(height);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue(printMap.get("Request"));
			nCell.setCellStyle(requestStyle(wb));
			
			//space line
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(20);
			
			//duty
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(32);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue("未按以上要求出货而导致客人索赔，由供方承担。");
			nCell.setCellStyle(dutyStyle(wb));	
			
			//space line
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(32);
			
			//buyer
			nRow = sheet.createRow(curRow++);
			nRow.setHeightInPoints(25);
			
			nCell = nRow.createCell((short)1);
			nCell.setCellValue("    收购方负责人：");
			nCell.setCellStyle(dutyStyle(wb));				
			
			//seller
			nCell = nRow.createCell((short)5);
			nCell.setCellValue("供方负责人：");
			nCell.setCellStyle(dutyStyle(wb));	
			
			curRow++;

		}
		
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();			//生成流对象
		wb.write(byteArrayOutputStream);													//将excel写入流

		//工具类，封装弹出下载框：		
		String outFile = "购销合同.xls";
		DownloadBase down = new DownloadBase();
		down.download(byteArrayOutputStream, response, outFile);

	}
	
	private HSSFCellStyle leftStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		curStyle.setWrapText(true);  						//换行   
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		//fTitle.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)10);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		curStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);				//实线右边框
		curStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);				//实线右边框
		
		return curStyle;
	}  
	
	private HSSFCellStyle headStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("Comic Sans MS");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setItalic(true);
		curFont.setFontHeightInPoints((short)16);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	}  
	
	private HSSFCellStyle tipStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("Georgia");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)28);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	}  
	
	private HSSFCellStyle addressStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("宋体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		//fTitle.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)10);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	}  
	
	private HSSFCellStyle ltdStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("Times New Roman");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setItalic(true);
		curFont.setFontHeightInPoints((short)16);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 	
	
	private HSSFCellStyle telStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("宋体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		//fTitle.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)9);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 	
	
	private HSSFCellStyle titleStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("黑体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)18);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 	
	
	private HSSFCellStyle requestStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		curStyle.setWrapText(true);  						//换行   
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("宋体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setFontHeightInPoints((short)10);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 	
	
	private HSSFCellStyle dutyStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("黑体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)16);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 	
	
	private HSSFCellStyle noteStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("宋体");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)12);
		curStyle.setFont(curFont);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	} 
	
	public HSSFCellStyle thStyle(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();					//设置字体
		curFont.setFontName("宋体");
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);	//加粗
		curFont.setFontHeightInPoints((short)12);
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);		//设置中文字体，那必须还要再对单元格进行编码设置
		
		curStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);				//实线右边框
		curStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);				//实线右边框
		curStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);			//实线右边框
		curStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);				//实线右边框
		
		curStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	}  
	
	public HSSFCellStyle bcv12(HSSFWorkbook wb){
		HSSFCellStyle curStyle = wb.createCellStyle();
		HSSFFont curFont = wb.createFont();						//设置字体
		curFont.setFontName("Times New Roman");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET);			//设置中文字体，那必须还要再对单元格进行编码设置
		
		curFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);		//加粗
		curFont.setFontHeightInPoints((short)12);
		curStyle.setFont(curFont);
		
		curStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);				//实线
		curStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);			//粗实线
		curStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);			//实线
		curStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);				//实线
		
		curStyle.setAlignment(HSSFCellStyle.ALIGN_RIGHT);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);		//单元格垂直居中
		
		return curStyle;
	}		
	
}
