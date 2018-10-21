package com.ros.entity;

import java.util.Date;

/*
 * 鲜花的实体类
 */
public class FlowerInfo {
	 //鲜花编号
    private  int flowerId;
   
	 //花名
    private  String flowerName;
   
	 //价格
    private  double price;
   
	
    private  String words;
   
	 //华语
    private  String description;
   
	 //缩略图
    private  String sPicture;
   
	 //大图
    private String bPicture;
   
	 //所属类别编号
    private  int typeId;
   
	 //库存数量
    private  int stock ;
   
	 //花上传时间
    private  String createTime;
   
	 //花的更新时间
    private  String updateTime;
   
    
    
  
    public int getFlowerId() {
		return flowerId;
	}
	public void setFlowerId(int flowerId) {
		this.flowerId = flowerId;
	}
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getsPicture() {
		return sPicture;
	}
	public void setsPicture(String sPicture) {
		this.sPicture = sPicture;
	}
	public String getbPicture() {
		return bPicture;
	}
	public void setbPicture(String bPicture) {
		this.bPicture = bPicture;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public FlowerInfo() {
		// TODO Auto-generated constructor stub
	}
	public FlowerInfo(int flowerId, String flowerName, double price, String words, String description, String sPicture,
			String bPicture, int typeId, int stock, String createTime, String updateTime) {
		super();
		this.flowerId = flowerId;
		this.flowerName = flowerName;
		this.price = price;
		this.words = words;
		this.description = description;
		this.sPicture = sPicture;
		this.bPicture = bPicture;
		this.typeId = typeId;
		this.stock = stock;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public FlowerInfo(String flowerName, double price, String words, String description, String sPicture,
			String bPicture, int typeId, String createTime, String updateTime) {
		super();
		this.flowerName = flowerName;
		this.price = price;
		this.words = words;
		this.description = description;
		this.sPicture = sPicture;
		this.bPicture = bPicture;
		this.typeId = typeId;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	public FlowerInfo(int flowerId, String flowerName, double price, String words, String description,
			String updateTime) {
		super();
		this.flowerId = flowerId;
		this.flowerName = flowerName;
		this.price = price;
		this.words = words;
		this.description = description;
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "FlowerInfo [flowerId=" + flowerId + ", flowerName=" + flowerName + ", price=" + price + ", words="
				+ words + ", description=" + description + ", sPicture=" + sPicture + ", bPicture=" + bPicture
				+ ", typeId=" + typeId + ", stock=" + stock + ", createTime=" + createTime + ", updateTime="
				+ updateTime + "]";
	}
    
}
