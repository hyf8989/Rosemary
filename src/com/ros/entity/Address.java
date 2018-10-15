package com.ros.entity;
/**
 * 定义用户收货地址实体类
 * @author hyf
 *
 */
public class Address {

	private int addressId;
	private int  userId;
	
	private String receiverProvince;
	private String receiverCity;
	private String receiverDistrict;
	private String receiverName;
	private String  receiverPhone;
	private String addressInfo;
	private int receiverZip;
	private String createTime;
	private String updateTime;
	
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getAddressInfo() {
		return addressInfo;
	}
	public void setAddressInfo(String addressInfo) {
		this.addressInfo = addressInfo;
	}

	
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public String getReceiverProvince() {
		return receiverProvince;
	}
	public void setReceiverProvince(String receiverProvince) {
		this.receiverProvince = receiverProvince;
	}
	public String getReceiverCity() {
		return receiverCity;
	}
	public void setReceiverCity(String receiverCity) {
		this.receiverCity = receiverCity;
	}
	public String getReceiverDistrict() {
		return receiverDistrict;
	}
	public void setReceiverDistrict(String receiverDistrict) {
		this.receiverDistrict = receiverDistrict;
	}
	public int getReceiverZip() {
		return receiverZip;
	}
	
	
	public Address(int userId, String receiverProvince, String receiverCity, String receiverDistrict,
			String receiverName, String receiverPhone, String addressInfo, int receiverZip, String createTime,
			String updateTime) {
		super();
		this.userId = userId;
		this.receiverProvince = receiverProvince;
		this.receiverCity = receiverCity;
		this.receiverDistrict = receiverDistrict;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.addressInfo = addressInfo;
		this.receiverZip = receiverZip;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	public Address(int addressId, int userId, String receiverProvince, String receiverCity, String receiverDistrict,
			String receiverName, String receiverPhone, String addressInfo, int receiverZip, String createTime,
			String updateTime) {
		super();
		this.addressId = addressId;
		this.userId = userId;
		this.receiverProvince = receiverProvince;
		this.receiverCity = receiverCity;
		this.receiverDistrict = receiverDistrict;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.addressInfo = addressInfo;
		this.receiverZip = receiverZip;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", userId=" + userId + ", receiverProvince=" + receiverProvince
				+ ", receiverCity=" + receiverCity + ", receiverDistrict=" + receiverDistrict + ", receiverName="
				+ receiverName + ", receiverPhone=" + receiverPhone + ", addressInfo=" + addressInfo + ", receiverZip="
				+ receiverZip + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setReceiverZip(int receiverZip) {
		this.receiverZip = receiverZip;
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
	
	public Address() {
		// TODO Auto-generated constructor stub
	}
	public Address(String receiverProvince, String receiverCity, String receiverDistrict, String receiverName,
			String receiverPhone, String addressInfo, int receiverZip, String updateTime,int addressId) {
		super();
		this.receiverProvince = receiverProvince;
		this.receiverCity = receiverCity;
		this.receiverDistrict = receiverDistrict;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.addressInfo = addressInfo;
		this.receiverZip = receiverZip;
		this.updateTime = updateTime;
		this.addressId = addressId;
	}
	
	
}
