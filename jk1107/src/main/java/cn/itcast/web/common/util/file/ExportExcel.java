package cn.itcast.web.common.util.file;

import java.io.*;

import org.apache.poi.hssf.usermodel.*;
import org.apache.struts2.ServletActionContext;

import cn.itcast.web.common.util.DownloadBase;
import cn.itcast.web.common.util.UtilFuns;

import java.util.List;
import java.lang.Exception;

import javax.servlet.http.HttpServletResponse;

public class ExportExcel {

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitles() {
		return titles;
	}

	public void setTitles(String titles) {
		this.titles = titles;
	}

	private String fileName = "";
	private String title = ""; 			//报表标题
	private String titles = ""; 		//标题栏，以逗号隔开

	public int Cols = 0;

	
	public void print(List<String> aList) throws Exception{
		UtilFuns utilFuns = new UtilFuns();
		String rootPath = utilFuns.getROOTPath();
		
		FileUtil fu = new FileUtil();
		String sPath = "/web/tmpfile/"+UtilFuns.sysDate()+"/";
		String sFile = fu.newFile(rootPath+sPath, this.fileName);
		fu.makeDir(rootPath+sPath);
		
		String outFile = rootPath+sPath+sFile;
		
	    HSSFWorkbook wb = new HSSFWorkbook(); 
		HSSFSheet sheet = wb.createSheet();
		
		int j = 0;
		
		if (title.length() > 0) {
			HSSFRow row = sheet.createRow(j++); // [row+1]
			HSSFCell cell = row.createCell((short) 0);
			cell.setCellValue(title); // Title Name
		}

		if (titles.length() > 0) {
			String[] aTitles = titles.split(",");

			Cols = aTitles.length;
			HSSFRow row = sheet.createRow(j++); // title row [row+1]
			for (int i = 0; i < Cols; i++) {
				HSSFCell cell = row.createCell((short) i);
				cell.setCellValue(aTitles[i]); // Column Name
				cell.setCellStyle(this.normalv10(wb,defaultFont10(wb)));
			}
		}

		if(aList.size()>0){
			int r = 0; // Table Row -1
			while (r * Cols < aList.size()) {
				HSSFRow row = sheet.createRow(j++); // title row [row+1]
	
				// System.out.println(r+":");
				for (int i = 0; i < Cols; i++) {
					HSSFCell cell = row.createCell((short) (i));
					cell.setCellValue((aList.get(r * Cols + i))); 						// Column Name
					// System.out.println(s);
				}
				r++;
			}
		}
		
		FileOutputStream fOut = new FileOutputStream(outFile);
		wb.write(fOut);
		fOut.flush();
		fOut.close();
		
		HttpServletResponse response = ServletActionContext.getResponse();
		
		DownloadBase down = new DownloadBase();
		down.prototypeDownload(new File(rootPath+sPath+sFile), sFile, response, true);
	}
	

	public HSSFFont blackFont12(HSSFWorkbook wb) {
		HSSFFont theFont = wb.createFont(); // 设置字体
		theFont.setFontName("黑体");
		theFont.setCharSet(HSSFFont.DEFAULT_CHARSET); // 设置中文字体，那必须还要再对单元格进行编码设置
		theFont.setFontHeightInPoints((short) 12);

		return theFont;
	}	
	
	public HSSFCellStyle normalv10(HSSFWorkbook wb, HSSFFont defaultFont10) {
		HSSFCellStyle curStyle = wb.createCellStyle();
		curStyle.setFont(defaultFont10);
		curStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); // 单元格垂直居中

		return curStyle;
	}	
	
	public HSSFFont defaultFont10(HSSFWorkbook wb) {
		HSSFFont curFont = wb.createFont(); // 设置字体
		curFont.setFontName("Times New Roman");
		curFont.setCharSet(HSSFFont.DEFAULT_CHARSET); // 设置中文字体，那必须还要再对单元格进行编码设置
		curFont.setFontHeightInPoints((short) 10);

		return curFont;
	}	

	public static void main(String[] args) throws Exception {

	}

}
