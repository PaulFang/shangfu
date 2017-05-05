package com.xianpin365.pojo;

import java.util.Date;

public class Product {

	private Integer id;

	private String name;

	private String packaging;

	private String seriesName;

	private String catlogName;

	private String description;

	private String specifications;

	private String purchaseLink;

	private String prodPicture1;

	private String prodPicture2;

	private String prodPicture3;

	private String prodPicture4;

	private String prodPicture5;

	private Date issuedTime;
	
	private boolean actived;
	
	private Integer dispalyOrder;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPackaging() {
		return packaging;
	}

	public void setPackaging(String packaging) {
		this.packaging = packaging;
	}

	public String getSeriesName() {
		return seriesName;
	}

	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}

	public String getCatlogName() {
		return catlogName;
	}

	public void setCatlogName(String catlogName) {
		this.catlogName = catlogName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSpecifications() {
		return specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getPurchaseLink() {
		return purchaseLink;
	}

	public void setPurchaseLink(String purchaseLink) {
		this.purchaseLink = purchaseLink;
	}

	public String getProdPicture1() {
		return prodPicture1;
	}

	public void setProdPicture1(String prodPicture1) {
		this.prodPicture1 = prodPicture1;
	}

	public String getProdPicture2() {
		return prodPicture2;
	}

	public void setProdPicture2(String prodPicture2) {
		this.prodPicture2 = prodPicture2;
	}

	public String getProdPicture3() {
		return prodPicture3;
	}

	public void setProdPicture3(String prodPicture3) {
		this.prodPicture3 = prodPicture3;
	}

	public String getProdPicture4() {
		return prodPicture4;
	}

	public void setProdPicture4(String prodPicture4) {
		this.prodPicture4 = prodPicture4;
	}

	public String getProdPicture5() {
		return prodPicture5;
	}

	public void setProdPicture5(String prodPicture5) {
		this.prodPicture5 = prodPicture5;
	}

	public Date getIssuedTime() {
		return issuedTime;
	}

	public void setIssuedTime(Date issuedTime) {
		this.issuedTime = issuedTime;
	}

	public boolean isActived() {
		return actived;
	}

	public void setActived(boolean actived) {
		this.actived = actived;
	}

	public Integer getDispalyOrder() {
		return dispalyOrder;
	}

	public void setDispalyOrder(Integer dispalyOrder) {
		this.dispalyOrder = dispalyOrder;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", packaging=" + packaging + ", seriesName=" + seriesName
				+ ", catlogName=" + catlogName + ", description=" + description + ", specifications=" + specifications
				+ ", purchaseLink=" + purchaseLink + ", prodPicture1=" + prodPicture1 + ", prodPicture2=" + prodPicture2
				+ ", prodPicture3=" + prodPicture3 + ", prodPicture4=" + prodPicture4 + ", prodPicture5=" + prodPicture5
				+ ", issuedTime=" + issuedTime + ", actived=" + actived + ", dispalyOrder=" + dispalyOrder + "]";
	}

	public Product() {
		super();
	}

}
