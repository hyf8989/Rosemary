package com.ros.entity;
/**
 * 定义用户收货地址实体类
 * @author hyf
 *
 */
public class Address {

	private int addressId;
	private String userName;
	
	private String receiverProvince;
	private String receiverCity;
	private String receiverDistrict;
	private String receiverName;
	private int  receiverPhone;
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

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public int getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(int receiverPhone) {
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
	
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", addressInfo=" + addressInfo + ", userName=" + userName
				+ ", receiverName=" + receiverName + ", receiverPhone=" + receiverPhone + ", receiverProvince="
				+ receiverProvince + ", receiverCity=" + receiverCity + ", receiverDistrict=" + receiverDistrict
				+ ", receiverZip=" + receiverZip + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
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
	public Address(int addressId, String userName, String receiverProvince, String receiverCity,
			String receiverDistrict, String addressInfo, String receiverName, int receiverPhone, int receiverZip,
			String createTime, String updateTime) {
		super();
		this.addressId = addressId;
		this.userName = userName;
		this.receiverProvince = receiverProvince;
		this.receiverCity = receiverCity;
		this.receiverDistrict = receiverDistrict;
		this.addressInfo = addressInfo;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.receiverZip = receiverZip;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	
}
