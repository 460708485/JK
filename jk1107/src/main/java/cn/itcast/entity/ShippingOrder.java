package cn.itcast.entity;

public class ShippingOrder {
	private java.lang.String id;
	private java.lang.String orderType;
	private java.lang.String shipper;
	private java.lang.String consignee;
	private java.lang.String notifyParty;
	private java.lang.String lcno;
	private java.lang.String portOfLoading;
	private java.lang.String portOfTrans;
	private java.lang.String portOfDischarge;
	private java.util.Date loadingDate;
	private java.util.Date limitDate;
	private java.lang.String isBatch;
	private java.lang.String isTrans;
	private java.lang.String copyNum;
	private java.lang.String cnote;
	private java.lang.String specialCondition;
	private java.lang.String freight;
	private java.lang.String checkBy;
	private java.lang.String createBy;
	private java.lang.String createDept;
	private java.util.Date createTime;
	public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public java.lang.String getOrderType() {
		return orderType;
	}
	public void setOrderType(java.lang.String orderType) {
		this.orderType = orderType;
	}
	public java.lang.String getShipper() {
		return shipper;
	}
	public void setShipper(java.lang.String shipper) {
		this.shipper = shipper;
	}
	public java.lang.String getConsignee() {
		return consignee;
	}
	public void setConsignee(java.lang.String consignee) {
		this.consignee = consignee;
	}
	public java.lang.String getNotifyParty() {
		return notifyParty;
	}
	public void setNotifyParty(java.lang.String notifyParty) {
		this.notifyParty = notifyParty;
	}
	public java.lang.String getLcno() {
		return lcno;
	}
	public void setLcno(java.lang.String lcno) {
		this.lcno = lcno;
	}
	public java.lang.String getPortOfLoading() {
		return portOfLoading;
	}
	public void setPortOfLoading(java.lang.String portOfLoading) {
		this.portOfLoading = portOfLoading;
	}
	public java.lang.String getPortOfTrans() {
		return portOfTrans;
	}
	public void setPortOfTrans(java.lang.String portOfTrans) {
		this.portOfTrans = portOfTrans;
	}
	public java.lang.String getPortOfDischarge() {
		return portOfDischarge;
	}
	public void setPortOfDischarge(java.lang.String portOfDischarge) {
		this.portOfDischarge = portOfDischarge;
	}
	public java.util.Date getLoadingDate() {
		return loadingDate;
	}
	public void setLoadingDate(java.util.Date loadingDate) {
		this.loadingDate = loadingDate;
	}
	public java.util.Date getLimitDate() {
		return limitDate;
	}
	public void setLimitDate(java.util.Date limitDate) {
		this.limitDate = limitDate;
	}
	public java.lang.String getIsBatch() {
		return isBatch;
	}
	public void setIsBatch(java.lang.String isBatch) {
		this.isBatch = isBatch;
	}
	public java.lang.String getIsTrans() {
		return isTrans;
	}
	public void setIsTrans(java.lang.String isTrans) {
		this.isTrans = isTrans;
	}
	public java.lang.String getCopyNum() {
		return copyNum;
	}
	public void setCopyNum(java.lang.String copyNum) {
		this.copyNum = copyNum;
	}
	public java.lang.String getCnote() {
		return cnote;
	}
	public void setCnote(java.lang.String cnote) {
		this.cnote = cnote;
	}
	public java.lang.String getSpecialCondition() {
		return specialCondition;
	}
	public void setSpecialCondition(java.lang.String specialCondition) {
		this.specialCondition = specialCondition;
	}
	public java.lang.String getFreight() {
		return freight;
	}
	public void setFreight(java.lang.String freight) {
		this.freight = freight;
	}
	public java.lang.String getCheckBy() {
		return checkBy;
	}
	public void setCheckBy(java.lang.String checkBy) {
		this.checkBy = checkBy;
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
	public PackingList getPackingList() {
		return packingList;
	}
	public void setPackingList(PackingList packingList) {
		this.packingList = packingList;
	}
	private PackingList packingList;
}
