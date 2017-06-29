package com.xianpin365.entity;

import java.util.Date;

public class News {

	private Integer id;
	private boolean actived;
	private String language;
	private String title;
	private String previewPic;
	private String contentAbstract;
	private Date issuedTime;
	private String from;
	private Integer pvCount;
	private String content;
	private String keywords;
	private Integer nextNewsId;
	private String nextNewsTitle;
	private Integer lastNewsId;
	private String lastNewsTitle;
	private String neckBanner;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isActived() {
		return actived;
	}

	public void setActived(boolean actived) {
		this.actived = actived;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPreviewPic() {
		return previewPic;
	}

	public void setPreviewPic(String previewPic) {
		this.previewPic = previewPic;
	}

	public String getContentAbstract() {
		return contentAbstract;
	}

	public void setContentAbstract(String contentAbstract) {
		this.contentAbstract = contentAbstract;
	}

	public Date getIssuedTime() {
		return issuedTime;
	}

	public void setIssuedTime(Date issuedTime) {
		this.issuedTime = issuedTime;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public Integer getPvCount() {
		return pvCount;
	}

	public void setPvCount(Integer pvCount) {
		this.pvCount = pvCount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Integer getNextNewsId() {
		return nextNewsId;
	}

	public void setNextNewsId(Integer nextNewsId) {
		this.nextNewsId = nextNewsId;
	}

	public String getNextNewsTitle() {
		return nextNewsTitle;
	}

	public void setNextNewsTitle(String nextNewsTitle) {
		this.nextNewsTitle = nextNewsTitle;
	}

	public Integer getLastNewsId() {
		return lastNewsId;
	}

	public void setLastNewsId(Integer lastNewsId) {
		this.lastNewsId = lastNewsId;
	}

	public String getLastNewsTitle() {
		return lastNewsTitle;
	}

	public void setLastNewsTitle(String lastNewsTitle) {
		this.lastNewsTitle = lastNewsTitle;
	}

	public String getNeckBanner() {
		return neckBanner;
	}

	public void setNeckBanner(String neckBanner) {
		this.neckBanner = neckBanner;
	}

}
