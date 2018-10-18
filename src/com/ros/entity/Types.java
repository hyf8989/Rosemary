package com.ros.entity;

/**
 * 鲜花类型的实体类
 * @author Administrator
 *
 */
public class Types {
	private int typeId;//编号
	private String typeName;//类型名
	private String createTime;//创建时间
	private String updateTime;//更新时间
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
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
	
	public Types() {
		// TODO Auto-generated constructor stub
	}
	public Types(int typeId, String typeName, String createTime, String updateTime) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	
	public Types(int typeId, String typeName, String updateTime) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "Types [typeId=" + typeId + ", typeName=" + typeName + ", createTime=" + createTime + ", updateTime="
				+ updateTime + "]";
	}
	public Types(String typeName, String createTime, String updateTime) {
		super();
		this.typeName = typeName;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	

}
