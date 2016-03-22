package cn.itcast.entity;


public class PackingList {
//	private Finance finance;
//	public Finance getFinance() {
//		return finance;
//	}
//	public void setFinance(Finance finance) {
//		this.finance = finance;
//	}
//	public Invoice getInvoice() {
//		return invoice;
//	}
//	public void setInvoice(Invoice invoice) {
//		this.invoice = invoice;
//	}
//	private Invoice invoice;
	private ShippingOrder shippingOrder;
	public ShippingOrder getShippingOrder() {
		return shippingOrder;
	}
	public void setShippingOrder(ShippingOrder shippingOrder) {
		this.shippingOrder = shippingOrder;
	}
	private java.lang.String id;

	// fields
	private java.lang.String seller;
	private java.lang.String buyer;
	private java.lang.String invoiceNo;
	private java.util.Date invoiceDate;
	private java.lang.String marks;
	private java.lang.String descriptions;
	private java.lang.String exportIds;
	private java.lang.String exportNos;
	private java.lang.String createBy;
	private java.lang.String createDept;
	private java.util.Date createTime;

	// collections
//	private Set<ShippingOrder> shippingOrder;
//	private Set<Invoice> invoice;
//	private Set<Finance> finance;
	
	public java.lang.String getId() {
		return id;
	}
	public void setId(java.lang.String id) {
		this.id = id;
	}
	public java.lang.String getSeller() {
		return seller;
	}
	public void setSeller(java.lang.String seller) {
		this.seller = seller;
	}
	public java.lang.String getBuyer() {
		return buyer;
	}
	public void setBuyer(java.lang.String buyer) {
		this.buyer = buyer;
	}
	public java.lang.String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(java.lang.String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public java.util.Date getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(java.util.Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public java.lang.String getMarks() {
		return marks;
	}
	public void setMarks(java.lang.String marks) {
		this.marks = marks;
	}
	public java.lang.String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(java.lang.String descriptions) {
		this.descriptions = descriptions;
	}
	public java.lang.String getExportIds() {
		return exportIds;
	}
	public void setExportIds(java.lang.String exportIds) {
		this.exportIds = exportIds;
	}
	public java.lang.String getExportNos() {
		return exportNos;
	}
	public void setExportNos(java.lang.String exportNos) {
		this.exportNos = exportNos;
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
	
}
