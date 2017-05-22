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
import net.lbtech.platform.modules.cms.entity.CmsInsuranceorder;
import net.lbtech.platform.modules.cms.service.CmsInsuranceorderService;

/**
 * 单表生成Controller
 * @author Astra
 * @version 2017-05-21
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/cmsInsuranceorder")
public class CmsInsuranceorderController extends BaseController {

	@Autowired
	private CmsInsuranceorderService cmsInsuranceorderService;
	
	@ModelAttribute
	public CmsInsuranceorder get(@RequestParam(required=false) String id) {
		CmsInsuranceorder entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsInsuranceorderService.get(id);
		}
		if (entity == null){
			entity = new CmsInsuranceorder();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:cmsInsuranceorder:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsInsuranceorder cmsInsuranceorder, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsInsuranceorder> page = cmsInsuranceorderService.findPage(new Page<CmsInsuranceorder>(request, response), cmsInsuranceorder); 
		model.addAttribute("page", page);
		return "modules/cms/cmsInsuranceorderList";
	}

	@RequiresPermissions("cms:cmsInsuranceorder:view")
	@RequestMapping(value = "form")
	public String form(CmsInsuranceorder cmsInsuranceorder, Model model) {
		model.addAttribute("cmsInsuranceorder", cmsInsuranceorder);
		return "modules/cms/cmsInsuranceorderForm";
	}

	@RequiresPermissions("cms:cmsInsuranceorder:edit")
	@RequestMapping(value = "save")
	public String save(CmsInsuranceorder cmsInsuranceorder, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsInsuranceorder)){
			return form(cmsInsuranceorder, model);
		}
		cmsInsuranceorderService.save(cmsInsuranceorder);
		addMessage(redirectAttributes, "保存单表成功");
		return "redirect:"+Global.getAdminPath()+"/cms/cmsInsuranceorder/?repage";
	}
	
	@RequiresPermissions("cms:cmsInsuranceorder:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsInsuranceorder cmsInsuranceorder, RedirectAttributes redirectAttributes) {
		cmsInsuranceorderService.delete(cmsInsuranceorder);
		addMessage(redirectAttributes, "删除单表成功");
		return "redirect:"+Global.getAdminPath()+"/cms/cmsInsuranceorder/?repage";
	}

}