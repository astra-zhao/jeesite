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
public class CmsRiskinvest extends DataEntity<CmsRiskinvest> {
	
	private static final long serialVersionUID = 1L;
	private String submitname;		// submitname
	private String commandname;		// commandname
	private String company;		// company
	private String emergencyrisk;		// emergencyrisk
	private String responserisk;		// responserisk
	private String guardorgrisk;		// guardorgrisk
	private String recordrisk;		// recordrisk
	private String guardrisk;		// guardrisk
	private String registerrisk;		// registerrisk
	private String personresprisk;		// personresprisk
	private String buildcheckrisk;		// buildcheckrisk
	private String buildwarnrisk;		// buildwarnrisk
	private String reportrisk;		// reportrisk
	private String reUserId;		// re_user_id
	private Date reDate;		// re_date
	private String reContent;		// re_content
	
	public CmsRiskinvest() {
		super();
	}

	public CmsRiskinvest(String id){
		super(id);
	}

	@Length(min=1, max=200, message="submitname长度必须介于 1 和 200 之间")
	public String getSubmitname() {
		return submitname;
	}

	public void setSubmitname(String submitname) {
		this.submitname = submitname;
	}
	
	@Length(min=1, max=255, message="commandname长度必须介于 1 和 255 之间")
	public String getCommandname() {
		return commandname;
	}

	public void setCommandname(String commandname) {
		this.commandname = commandname;
	}
	
	@Length(min=1, max=100, message="company长度必须介于 1 和 100 之间")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
	
	@Length(min=0, max=1, message="emergencyrisk长度必须介于 0 和 1 之间")
	public String getEmergencyrisk() {
		return emergencyrisk;
	}

	public void setEmergencyrisk(String emergencyrisk) {
		this.emergencyrisk = emergencyrisk;
	}
	
	@Length(min=0, max=1, message="responserisk长度必须介于 0 和 1 之间")
	public String getResponserisk() {
		return responserisk;
	}

	public void setResponserisk(String responserisk) {
		this.responserisk = responserisk;
	}
	
	@Length(min=0, max=1, message="guardorgrisk长度必须介于 0 和 1 之间")
	public String getGuardorgrisk() {
		return guardorgrisk;
	}

	public void setGuardorgrisk(String guardorgrisk) {
		this.guardorgrisk = guardorgrisk;
	}
	
	@Length(min=0, max=1, message="recordrisk长度必须介于 0 和 1 之间")
	public String getRecordrisk() {
		return recordrisk;
	}

	public void setRecordrisk(String recordrisk) {
		this.recordrisk = recordrisk;
	}
	
	@Length(min=0, max=1, message="guardrisk长度必须介于 0 和 1 之间")
	public String getGuardrisk() {
		return guardrisk;
	}

	public void setGuardrisk(String guardrisk) {
		this.guardrisk = guardrisk;
	}
	
	@Length(min=0, max=1, message="registerrisk长度必须介于 0 和 1 之间")
	public String getRegisterrisk() {
		return registerrisk;
	}

	public void setRegisterrisk(String registerrisk) {
		this.registerrisk = registerrisk;
	}
	
	@Length(min=0, max=1, message="personresprisk长度必须介于 0 和 1 之间")
	public String getPersonresprisk() {
		return personresprisk;
	}

	public void setPersonresprisk(String personresprisk) {
		this.personresprisk = personresprisk;
	}
	
	@Length(min=0, max=1, message="buildcheckrisk长度必须介于 0 和 1 之间")
	public String getBuildcheckrisk() {
		return buildcheckrisk;
	}

	public void setBuildcheckrisk(String buildcheckrisk) {
		this.buildcheckrisk = buildcheckrisk;
	}
	
	@Length(min=0, max=1, message="buildwarnrisk长度必须介于 0 和 1 之间")
	public String getBuildwarnrisk() {
		return buildwarnrisk;
	}

	public void setBuildwarnrisk(String buildwarnrisk) {
		this.buildwarnrisk = buildwarnrisk;
	}
	
	@Length(min=0, max=1, message="reportrisk长度必须介于 0 和 1 之间")
	public String getReportrisk() {
		return reportrisk;
	}

	public void setReportrisk(String reportrisk) {
		this.reportrisk = reportrisk;
	}
	
	@Length(min=0, max=64, message="re_user_id长度必须介于 0 和 64 之间")
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
	
	@Length(min=0, max=100, message="re_content长度必须介于 0 和 100 之间")
	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	
}