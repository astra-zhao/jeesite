/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.ins.inscom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import net.lbtech.platform.modules.ins.inscom.entity.TInscom;
import net.lbtech.platform.modules.ins.inscom.dao.TInscomDao;

/**
 * 保险公司代码生成Service
 * @author astra_zhao
 * @version 2017-10-10
 */
@Service
@Transactional(readOnly = true)
public class TInscomService extends CrudService<TInscomDao, TInscom> {
	
	@Autowired
	private RedisTemplate<String, TInscom> redisTemplate;

	public TInscom get(String id) {
		ValueOperations<String, TInscom> valueops = redisTemplate.opsForValue();
		TInscom tInscom = null;
		tInscom=valueops.get(id);
		if (tInscom==null)
			return super.get(id);
		else
			return tInscom;
	}
	
	public List<TInscom> findList(TInscom tInscom) {
		return super.findList(tInscom);
	}
	
	public Page<TInscom> findPage(Page<TInscom> page, TInscom tInscom) {
		return super.findPage(page, tInscom);
	}
	
	@Transactional(readOnly = false)
	public void save(TInscom tInscom) {
		ValueOperations<String, TInscom> valueops = redisTemplate.opsForValue();
		valueops.set(tInscom.getId(), tInscom);
		super.save(tInscom);
	}
	
	@Transactional(readOnly = false)
	public void delete(TInscom tInscom) {
		super.delete(tInscom);
	}
	
}