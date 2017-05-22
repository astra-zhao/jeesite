/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import net.lbtech.platform.modules.cms.entity.CmsRiskinvest;

/**
 * 单表生成DAO接口
 * @author Astra
 * @version 2017-05-21
 */
@MyBatisDao
public interface CmsRiskinvestDao extends CrudDao<CmsRiskinvest> {
	
}