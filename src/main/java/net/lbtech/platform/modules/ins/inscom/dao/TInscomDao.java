/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.ins.inscom.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import net.lbtech.platform.modules.ins.inscom.entity.TInscom;

/**
 * 保险公司代码生成DAO接口
 * @author astra_zhao
 * @version 2017-10-10
 */
@MyBatisDao
public interface TInscomDao extends CrudDao<TInscom> {
	
}