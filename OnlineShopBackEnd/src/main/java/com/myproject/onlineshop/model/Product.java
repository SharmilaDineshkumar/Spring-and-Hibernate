package com.myproject.onlineshop.model;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {

	@Id	
	  private int pid;
	  private String pname;
	  private int pcost;
	  @Lob
	  private Blob p_image;
	  
	  
	  @ManyToOne
	  @JoinColumn(name="categoryid")
	  private Category  categoryid;

	  
	public Category getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(Category categoryid) {
		this.categoryid = categoryid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	  
	public Blob getP_image() {
		return p_image;
	}
	public void setP_image(Blob p_image) {
		this.p_image = p_image;
	}
}
