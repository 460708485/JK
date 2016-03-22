package cn.itcast.entity;

import java.util.Set;

public class Contract {
	private Set<ContractProduct> contractProducts;
	
	/**
	 * @return the contractProducts
	 */
	public Set<ContractProduct> getContractProducts() {
		return contractProducts;
	}
	/**
	 * @param contractProducts the contractProducts to set
	 */
	public void setContractProducts(Set<ContractProduct> contractProducts) {
		this.contractProducts = contractProducts;
	}
	private java.lang.String id;
	private java.lang.String offeror;
	private java.lang.String contractNo;
	private java.util.Date signingDate;
	private java.lang.String inputBy;
	private java.lang.String checkBy;
	public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public java.lang.String getOfferor() {
		return offeror;
	}
	public void setOfferor(java.lang.String offeror) {
		this.offeror = offeror;
	}
	public java.lang.String getContractNo() {
		return contractNo;
	}
	public void setContractNo(java.lang.String contractNo) {
		this.contractNo = contractNo;
	}
	public java.util.Date getSigningDate() {
		return signingDate;
	}
	public void setSigningDate(java.util.Date signingDate) {
		this.signingDate = signingDate;
	}
	public java.lang.String getInputBy() {
		return inputBy;
	}
	public void setInputBy(java.lang.String inputBy) {
		this.inputBy = inputBy;
	}
	public java.lang.String getCheckBy() {
		return checkBy;
	}
	public void setCheckBy(java.lang.String checkBy) {
		this.checkBy = checkBy;
	}
	public java.lang.String getInspector() {
		return inspector;
	}
	public void setInspector(java.lang.String inspector) {
		this.inspector = inspector;
	}
	public java.math.BigDecimal getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(java.math.BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public java.lang.String getCrequest() {
		return crequest;
	}
	public void setCrequest(java.lang.String crequest) {
		this.crequest = crequest;
	}
	public java.lang.String getCustomName() {
		return customName;
	}
	public void setCustomName(java.lang.String customName) {
		this.customName = customName;
	}
	public java.util.Date getShipTime() {
		return shipTime;
	}
	public void setShipTime(java.util.Date shipTime) {
		this.shipTime = shipTime;
	}
	public java.lang.Integer getImportNum() {
		return importNum;
	}
	public void setImportNum(java.lang.Integer importNum) {
		this.importNum = importNum;
	}
	public java.util.Date getDeliveryPeriod() {
		return deliveryPeriod;
	}
	public void setDeliveryPeriod(java.util.Date deliveryPeriod) {
		this.deliveryPeriod = deliveryPeriod;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.String getTradeTerms() {
		return tradeTerms;
	}
	public void setTradeTerms(java.lang.String tradeTerms) {
		this.tradeTerms = tradeTerms;
	}
	public java.lang.String getPrintStyle() {
		return printStyle;
	}
	public void setPrintStyle(java.lang.String printStyle) {
		this.printStyle = printStyle;
	}
	public java.lang.Integer getOldState() {
		return oldState;
	}
	public void setOldState(java.lang.Integer oldState) {
		this.oldState = oldState;
	}
	public java.lang.Integer getState() {
		return state;
	}
	public void setState(java.lang.Integer state) {
		this.state = state;
	}
	public java.lang.Integer getOutState() {
		return outState;
	}
	public void setOutState(java.lang.Integer outState) {
		this.outState = outState;
	}
	public java.lang.String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(java.lang.String createBy) {
		this.createBy = createBy;
	}
	public java.lang.String getCreateDept() {
		return createDept;
	}
	public void setCreateDept(java.lang.String createDept) {
		this.createDept = createDept;
	}
	public java.util.Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	private java.lang.String inspector;
	private java.math.BigDecimal totalAmount;
	private java.lang.String crequest;
	private java.lang.String customName;
	private java.util.Date shipTime;
	private java.lang.Integer importNum;
	private java.util.Date deliveryPeriod;
	private java.lang.String remark;
	private java.lang.String tradeTerms;
	private java.lang.String printStyle;
	private java.lang.Integer oldState;
	private java.lang.Integer state;
	private java.lang.Integer outState;
	private java.lang.String createBy;
	private java.lang.String createDept;
	private java.util.Date createTime;
}