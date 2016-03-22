package cn.itcast.entity;

import java.util.Set;

public class Export {
	private Set<ExportProduct> exportProduct;
	
	private java.lang.String id;
	private java.lang.String contractIds;
	private java.lang.String customerContract;
	private java.util.Date inputDate;
	private java.lang.String consignee; 
	private java.lang.String lcno;
	public Set<ExportProduct> getExportProduct() {
		return exportProduct;
	}
	public void setExportProduct(Set<ExportProduct> exportProduct) {
		this.exportProduct = exportProduct;
	}
	public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public java.lang.String getContractIds() {
		return contractIds;
	}
	public void setContractIds(java.lang.String contractIds) {
		this.contractIds = contractIds;
	}
	public java.lang.String getCustomerContract() {
		return customerContract;
	}
	public void setCustomerContract(java.lang.String customerContract) {
		this.customerContract = customerContract;
	}
	public java.util.Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(java.util.Date inputDate) {
		this.inputDate = inputDate;
	}
	public java.lang.String getConsignee() {
		return consignee;
	}
	public void setConsignee(java.lang.String consignee) {
		this.consignee = consignee;
	}
	public java.lang.String getLcno() {
		return lcno;
	}
	public void setLcno(java.lang.String lcno) {
		this.lcno = lcno;
	}
	public java.lang.String getMarks() {
		return marks;
	}
	public void setMarks(java.lang.String marks) {
		this.marks = marks;
	}
	public java.lang.String getShipmentPort() {
		return shipmentPort;
	}
	public void setShipmentPort(java.lang.String shipmentPort) {
		this.shipmentPort = shipmentPort;
	}
	public java.lang.String getDestinationPort() {
		return destinationPort;
	}
	public void setDestinationPort(java.lang.String destinationPort) {
		this.destinationPort = destinationPort;
	}
	public java.lang.String getTransportMode() {
		return transportMode;
	}
	public void setTransportMode(java.lang.String transportMode) {
		this.transportMode = transportMode;
	}
	public java.lang.String getPriceCondition() {
		return priceCondition;
	}
	public void setPriceCondition(java.lang.String priceCondition) {
		this.priceCondition = priceCondition;
	}
	public java.lang.String getRemark() {
		return remark;
	}
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	public java.lang.Integer getBoxNum() {
		return boxNum;
	}
	public void setBoxNum(java.lang.Integer boxNum) {
		this.boxNum = boxNum;
	}
	public java.lang.Integer getCnumber() {
		return cnumber;
	}
	public void setCnumber(java.lang.Integer cnumber) {
		this.cnumber = cnumber;
	}
	public java.lang.String getPackingUnit() {
		return packingUnit;
	}
	public void setPackingUnit(java.lang.String packingUnit) {
		this.packingUnit = packingUnit;
	}
	public java.math.BigDecimal getGrossWeight() {
		return grossWeight;
	}
	public void setGrossWeight(java.math.BigDecimal grossWeight) {
		this.grossWeight = grossWeight;
	}
	public java.math.BigDecimal getNetWeight() {
		return netWeight;
	}
	public void setNetWeight(java.math.BigDecimal netWeight) {
		this.netWeight = netWeight;
	}
	public java.math.BigDecimal getSizeLength() {
		return sizeLength;
	}
	public void setSizeLength(java.math.BigDecimal sizeLength) {
		this.sizeLength = sizeLength;
	}
	public java.math.BigDecimal getSizeWidth() {
		return sizeWidth;
	}
	public void setSizeWidth(java.math.BigDecimal sizeWidth) {
		this.sizeWidth = sizeWidth;
	}
	public java.math.BigDecimal getSizeHeight() {
		return sizeHeight;
	}
	public void setSizeHeight(java.math.BigDecimal sizeHeight) {
		this.sizeHeight = sizeHeight;
	}
	public java.math.BigDecimal getCsize() {
		return csize;
	}
	public void setCsize(java.math.BigDecimal csize) {
		this.csize = csize;
	}
	public java.math.BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(java.math.BigDecimal amount) {
		this.amount = amount;
	}
	public java.math.BigDecimal getNoTax() {
		return noTax;
	}
	public void setNoTax(java.math.BigDecimal noTax) {
		this.noTax = noTax;
	}
	public java.math.BigDecimal getTax() {
		return tax;
	}
	public void setTax(java.math.BigDecimal tax) {
		this.tax = tax;
	}
	public java.math.BigDecimal getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(java.math.BigDecimal costPrice) {
		this.costPrice = costPrice;
	}
	public java.math.BigDecimal getCostTax() {
		return costTax;
	}
	public void setCostTax(java.math.BigDecimal costTax) {
		this.costTax = costTax;
	}
	public java.lang.Integer getState() {
		return state;
	}
	public void setState(java.lang.Integer state) {
		this.state = state;
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
	private java.lang.String marks;
	private java.lang.String shipmentPort;
	private java.lang.String destinationPort;
	private java.lang.String transportMode;
	private java.lang.String priceCondition;
	private java.lang.String remark;
	private java.lang.Integer boxNum;
	private java.lang.Integer cnumber;
	private java.lang.String packingUnit;
	private java.math.BigDecimal grossWeight;
	private java.math.BigDecimal netWeight;
	private java.math.BigDecimal sizeLength;
	private java.math.BigDecimal sizeWidth;
	private java.math.BigDecimal sizeHeight;
	private java.math.BigDecimal csize;
	private java.math.BigDecimal amount;
	private java.math.BigDecimal noTax;
	private java.math.BigDecimal tax;
	private java.math.BigDecimal costPrice;
	private java.math.BigDecimal costTax;
	private java.lang.Integer state;
	private java.lang.String createBy;
	private java.lang.String createDept;
	private java.util.Date createTime;

}
