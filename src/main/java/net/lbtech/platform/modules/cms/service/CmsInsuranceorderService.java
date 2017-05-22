/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import net.lbtech.platform.modules.cms.entity.CmsInsuranceorder;
import net.lbtech.platform.modules.cms.dao.CmsInsuranceorderDao;

/**
 * 单表生成Service
 * @author Astra
 * @version 2017-05-21
 */
@Service
@Transactional(readOnly = true)
public class CmsInsuranceorderService extends CrudService<CmsInsuranceorderDao, CmsInsuranceorder> {

	public CmsInsuranceorder get(String id) {
		return super.get(id);
	}
	
	public List<CmsInsuranceorder> findList(CmsInsuranceorder cmsInsuranceorder) {
		return super.findList(cmsInsuranceorder);
	}
	
	public Page<CmsInsuranceorder> findPage(Page<CmsInsuranceorder> page, CmsInsuranceorder cmsInsuranceorder) {
		return super.findPage(page, cmsInsuranceorder);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsInsuranceorder cmsInsuranceorder) {
		super.save(cmsInsuranceorder);
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsInsuranceorder cmsInsuranceorder) {
		super.delete(cmsInsuranceorder);
	}
	
}