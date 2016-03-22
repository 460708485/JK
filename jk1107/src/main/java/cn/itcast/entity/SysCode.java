package cn.itcast.entity;

import java.io.Serializable;
import java.util.Date;

public class SysCode implements Serializable {
	
	private SysCode parentSysCode;
	
	public SysCode getParentSysCode() {
		return parentSysCode;
	}
	public void setParentSysCode(SysCode parentSysCode) {
		this.parentSysCode = parentSysCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getCnote() {
		return cnote;
	}
	public void setCnote(String cnote) {
		this.cnote = cnote;
	}
	public Integer getLayerNum() {
		return layerNum;
	}
	public void setLayerNum(Integer layerNum) {
		this.layerNum = layerNum;
	}
	public String getIsLeaf() {
		return isLeaf;
	}
	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}
	public String getIco() {
		return ico;
	}
	public void setIco(String ico) {
		this.ico = ico;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getQuoteNum() {
		return quoteNum;
	}
	public void setQuoteNum(Integer quoteNum) {
		this.quoteNum = quoteNum;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public Date getUpdatedTime() {
		return updatedTime;
	}
	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
	private String id;
	private String name;
	private String parentId;
	private String parentName;
	private String cnote;
	private Integer layerNum;
	private String isLeaf;
	private String ico;
	private String state;
	private Integer quoteNum;
	private Integer orderNo;
	private String createdBy;
	private Date createdTime;
	private String updatedBy;
	private Date updatedTime;
}
