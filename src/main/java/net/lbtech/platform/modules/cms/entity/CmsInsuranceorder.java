/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.cms.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 单表生成Entity
 * @author Astra
 * @version 2017-05-21
 */
public class CmsInsuranceorder extends DataEntity<CmsInsuranceorder> {
	
	private static final long serialVersionUID = 1L;
	private String standardproperty;		// 财产一切险标准保额
	private String standardpropertyex;		// 财产一切险地震保额
	private String publicproperty;		// 公众责任险保额
	private String publicelevator;		// 公众责任险电梯责任保额
	private String publicsocial;		// 公众责任险娱乐场所保额
	private String publicswimming;		// 公众责任险游泳场
	private String publicparking;		// 公众责任险停车场
	private String publicfood;		// 食品安全责任险
	private String publicemployer;		// 雇主责任险保额
	private String groupaccident;		// 团体意外险保额
	private String machinedamage;		// 机器损坏保额
	private String businessinterruption;		// 营业中断保额
	private String machineinterruption;		// 机器中断保额
	private String reUserId;		// 创建人
	private Date reDate;		// 修改日期
	private String reContent;		// 修改说明
	private String amount;		// 金额
	private String submitname;		// 联系人姓名
	private String submitphone;		// 联系人电话
	private String company;		// 单位名称
	
	public CmsInsuranceorder() {
		super();
	}

	public CmsInsuranceorder(String id){
		super(id);
	}

	public String getStandardproperty() {
		return standardproperty;
	}

	public void setStandardproperty(String standardproperty) {
		this.standardproperty = standardproperty;
	}
	
	public String getStandardpropertyex() {
		return standardpropertyex;
	}

	public void setStandardpropertyex(String standardpropertyex) {
		this.standardpropertyex = standardpropertyex;
	}
	
	public String getPublicproperty() {
		return publicproperty;
	}

	public void setPublicproperty(String publicproperty) {
		this.publicproperty = publicproperty;
	}
	
	public String getPublicelevator() {
		return publicelevator;
	}

	public void setPublicelevator(String publicelevator) {
		this.publicelevator = publicelevator;
	}
	
	public String getPublicsocial() {
		return publicsocial;
	}

	public void setPublicsocial(String publicsocial) {
		this.publicsocial = publicsocial;
	}
	
	public String getPublicswimming() {
		return publicswimming;
	}

	public void setPublicswimming(String publicswimming) {
		this.publicswimming = publicswimming;
	}
	
	public String getPublicparking() {
		return publicparking;
	}

	public void setPublicparking(String publicparking) {
		this.publicparking = publicparking;
	}
	
	public String getPublicfood() {
		return publicfood;
	}

	public void setPublicfood(String publicfood) {
		this.publicfood = publicfood;
	}
	
	public String getPublicemployer() {
		return publicemployer;
	}

	public void setPublicemployer(String publicemployer) {
		this.publicemployer = publicemployer;
	}
	
	public String getGroupaccident() {
		return groupaccident;
	}

	public void setGroupaccident(String groupaccident) {
		this.groupaccident = groupaccident;
	}
	
	public String getMachinedamage() {
		return machinedamage;
	}

	public void setMachinedamage(String machinedamage) {
		this.machinedamage = machinedamage;
	}
	
	public String getBusinessinterruption() {
		return businessinterruption;
	}

	public void setBusinessinterruption(String businessinterruption) {
		this.businessinterruption = businessinterruption;
	}
	
	public String getMachineinterruption() {
		return machineinterruption;
	}

	public void setMachineinterruption(String machineinterruption) {
		this.machineinterruption = machineinterruption;
	}
	
	@Length(min=0, max=64, message="创建人长度必须介于 0 和 64 之间")
	public String getReUserId() {
		return reUserId;
	}

	public void setReUserId(String reUserId) {
		this.reUserId = reUserId;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getReDate() {
		return reDate;
	}

	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}
	
	@Length(min=0, max=100, message="修改说明长度必须介于 0 和 100 之间")
	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	
	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	@Length(min=0, max=30, message="联系人姓名长度必须介于 0 和 30 之间")
	public String getSubmitname() {
		return submitname;
	}

	public void setSubmitname(String submitname) {
		this.submitname = submitname;
	}
	
	@Length(min=0, max=30, message="联系人电话长度必须介于 0 和 30 之间")
	public String getSubmitphone() {
		return submitphone;
	}

	public void setSubmitphone(String submitphone) {
		this.submitphone = submitphone;
	}
	
	@Length(min=0, max=100, message="单位名称长度必须介于 0 和 100 之间")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
	
}