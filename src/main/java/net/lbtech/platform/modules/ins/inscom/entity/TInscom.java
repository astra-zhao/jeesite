/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.ins.inscom.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 保险公司代码生成Entity
 * @author astra_zhao
 * @version 2017-10-10
 */
public class TInscom extends DataEntity<TInscom> {
	
	private static final long serialVersionUID = 1L;
	private String suppliercode;		// 保险公司编码
	private String suppliershowcode;		// 保险公司显示编码
	private String instype;		// 保险公司类别
	private String insclass;		// 保险公司级别
	private String suppliername;		// 保险公司中文名称
	private String supplierengname;		// 保险公司英文名称
	private String shortname;		// 保险公司简称
	private String inssupercode;		// 保险公司上级单位
	private String hotline;		// 客服热线
	private String linkman;		// 联络人
	private Date founddate;		// 成立日期
	private String remark;		// 备注
	private String province;		// 省份
	private String city;		// 城市
	
	public TInscom() {
		super();
	}

	public TInscom(String id){
		super(id);
	}

	@Length(min=1, max=20, message="保险公司编码长度必须介于 1 和 20 之间")
	public String getSuppliercode() {
		return suppliercode;
	}

	public void setSuppliercode(String suppliercode) {
		this.suppliercode = suppliercode;
	}
	
	@Length(min=0, max=20, message="保险公司显示编码长度必须介于 0 和 20 之间")
	public String getSuppliershowcode() {
		return suppliershowcode;
	}

	public void setSuppliershowcode(String suppliershowcode) {
		this.suppliershowcode = suppliershowcode;
	}
	
	@Length(min=1, max=10, message="保险公司类别长度必须介于 1 和 10 之间")
	public String getInstype() {
		return instype;
	}

	public void setInstype(String instype) {
		this.instype = instype;
	}
	
	@Length(min=0, max=2, message="保险公司级别长度必须介于 0 和 2 之间")
	public String getInsclass() {
		return insclass;
	}

	public void setInsclass(String insclass) {
		this.insclass = insclass;
	}
	
	@Length(min=0, max=200, message="保险公司中文名称长度必须介于 0 和 200 之间")
	public String getSuppliername() {
		return suppliername;
	}

	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	
	@Length(min=0, max=200, message="保险公司英文名称长度必须介于 0 和 200 之间")
	public String getSupplierengname() {
		return supplierengname;
	}

	public void setSupplierengname(String supplierengname) {
		this.supplierengname = supplierengname;
	}
	
	@Length(min=0, max=150, message="保险公司简称长度必须介于 0 和 150 之间")
	public String getShortname() {
		return shortname;
	}

	public void setShortname(String shortname) {
		this.shortname = shortname;
	}
	
	@Length(min=0, max=20, message="保险公司上级单位长度必须介于 0 和 20 之间")
	public String getInssupercode() {
		return inssupercode;
	}

	public void setInssupercode(String inssupercode) {
		this.inssupercode = inssupercode;
	}
	
	@Length(min=0, max=30, message="客服热线长度必须介于 0 和 30 之间")
	public String getHotline() {
		return hotline;
	}

	public void setHotline(String hotline) {
		this.hotline = hotline;
	}
	
	@Length(min=0, max=13, message="联络人长度必须介于 0 和 13 之间")
	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getFounddate() {
		return founddate;
	}

	public void setFounddate(Date founddate) {
		this.founddate = founddate;
	}
	
	@Length(min=0, max=80, message="备注长度必须介于 0 和 80 之间")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Length(min=0, max=80, message="省份长度必须介于 0 和 80 之间")
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}
	
	@Length(min=0, max=80, message="城市长度必须介于 0 和 80 之间")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
}