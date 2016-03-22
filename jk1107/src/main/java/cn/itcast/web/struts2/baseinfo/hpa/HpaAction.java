package cn.itcast.web.struts2.baseinfo.hpa;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import cn.itcast.entity.Hpa;
import cn.itcast.entity.dao.HpaDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-5
 */
public class HpaAction extends _BaseStruts2Action  {

	//打印
	public void print() throws IOException{
		HpaDAO oDao = (HpaDAO) this.getDao("daoHpa");
		List<Hpa> dataList = oDao.find("from Hpa o");				//导出限定的数量
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet();
		HSSFRow nRow = null;
		HSSFCell nCell = null;
		
		int rowNo = 0;
		short colNo = 0;
		
		for(Hpa hpa : dataList){
			colNo = 0;
			nRow = sheet.createRow(rowNo++);
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getId());
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getBreast());
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getAdipocytes());
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getNegative());
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getStaining());
			
			nCell = nRow.createCell(colNo++);
			nCell.setCellValue(hpa.getSupportive());
		}
		
		FileOutputStream os = new FileOutputStream(new File("c:\\hpa.xlsx"));
		wb.write(os);
		os.close();
	}
}
