package com.dh.youth.beans;

public class Column {
	private int id;
	private String columnName;
	private String columnDescription;
	private int isuse;
	private int columnIndex;
	
	public int getColumnIndex() {
		return columnIndex;
	}
	public void setColumnIndex(int columnIndex) {
		this.columnIndex = columnIndex;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getColumnDescription() {
		return columnDescription;
	}
	public void setColumnDescription(String columnDescription) {
		this.columnDescription = columnDescription;
	}
	public int getIsuse() {
		return isuse;
	}
	public void setIsuse(int isuse) {
		this.isuse = isuse;
	}
}
