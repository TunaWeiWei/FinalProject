package com.web.store.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Shoes")
public class ItemBean implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer Id;
	private String url;
	private String img;
	private String name;
	private Integer price;
	private String source;
	
	public ItemBean(Integer itemId,String url,String img,String name,Integer price,String source) {
		this.Id = Id;
		this.url = url;
		this.img = img;
		this.name = name;
		this.price = price;
		this.source = source;
	}
	public ItemBean() {
		
	}
	
	public Integer getItemId() {
		return Id;
	}
	public void setItemId(Integer itemId) {
		this.Id = itemId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "ItemBean";
		
	}
}
