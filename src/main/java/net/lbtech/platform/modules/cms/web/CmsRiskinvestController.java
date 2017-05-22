/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.cms.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import net.lbtech.platform.modules.cms.entity.CmsRiskinvest;
import net.lbtech.platform.modules.cms.service.CmsRiskinvestService;

/**
 * 单表生成Controller
 * @author Astra
 * @version 2017-05-21
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/cmsRiskinvest")
public class CmsRiskinvestController extends BaseController {

	@Autowired
	private CmsRiskinvestService cmsRiskinvestService;
	
	@ModelAttribute
	public CmsRiskinvest get(@RequestParam(required=false) String id) {
		CmsRiskinvest entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsRiskinvestService.get(id);
		}
		if (entity == null){
			entity = new CmsRiskinvest();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:cmsRiskinvest:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsRiskinvest cmsRiskinvest, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsRiskinvest> page = cmsRiskinvestService.findPage(new Page<CmsRiskinvest>(request, response), cmsRiskinvest); 
		model.addAttribute("page", page);
		return "modules/cms/cmsRiskinvestList";
	}

	@RequiresPermissions("cms:cmsRiskinvest:view")
	@RequestMapping(value = "form")
	public String form(CmsRiskinvest cmsRiskinvest, Model model) {
		model.addAttribute("cmsRiskinvest", cmsRiskinvest);
		return "modules/cms/cmsRiskinvestForm";
	}

	@RequiresPermissions("cms:cmsRiskinvest:edit")
	@RequestMapping(value = "save")
	public String save(CmsRiskinvest cmsRiskinvest, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsRiskinvest)){
			return form(cmsRiskinvest, model);
		}
		cmsRiskinvestService.save(cmsRiskinvest);
		addMessage(redirectAttributes, "保存单表成功");
		return "redirect:"+Global.getAdminPath()+"/cms/cmsRiskinvest/?repage";
	}
	
	@RequiresPermissions("cms:cmsRiskinvest:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsRiskinvest cmsRiskinvest, RedirectAttributes redirectAttributes) {
		cmsRiskinvestService.delete(cmsRiskinvest);
		addMessage(redirectAttributes, "删除单表成功");
		return "redirect:"+Global.getAdminPath()+"/cms/cmsRiskinvest/?repage";
	}

}