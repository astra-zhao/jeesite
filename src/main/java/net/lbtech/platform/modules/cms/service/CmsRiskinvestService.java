/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import net.lbtech.platform.modules.cms.entity.CmsRiskinvest;
import net.lbtech.platform.modules.cms.dao.CmsRiskinvestDao;

/**
 * 单表生成Service
 * @author Astra
 * @version 2017-05-21
 */
@Service
@Transactional(readOnly = true)
public class CmsRiskinvestService extends CrudService<CmsRiskinvestDao, CmsRiskinvest> {

	public CmsRiskinvest get(String id) {
		return super.get(id);
	}
	
	public List<CmsRiskinvest> findList(CmsRiskinvest cmsRiskinvest) {
		return super.findList(cmsRiskinvest);
	}
	
	public Page<CmsRiskinvest> findPage(Page<CmsRiskinvest> page, CmsRiskinvest cmsRiskinvest) {
		return super.findPage(page, cmsRiskinvest);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsRiskinvest cmsRiskinvest) {
		super.save(cmsRiskinvest);
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsRiskinvest cmsRiskinvest) {
		super.delete(cmsRiskinvest);
	}
	
}