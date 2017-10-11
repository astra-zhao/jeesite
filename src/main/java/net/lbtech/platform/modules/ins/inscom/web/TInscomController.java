/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package net.lbtech.platform.modules.ins.inscom.web;

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
import net.lbtech.platform.modules.ins.inscom.entity.TInscom;
import net.lbtech.platform.modules.ins.inscom.service.TInscomService;

/**
 * 保险公司代码生成Controller
 * @author astra_zhao
 * @version 2017-10-10
 */
@Controller
@RequestMapping(value = "${adminPath}/inscom/tInscom")
public class TInscomController extends BaseController {

	@Autowired
	private TInscomService tInscomService;
	
	@ModelAttribute
	public TInscom get(@RequestParam(required=false) String id) {
		TInscom entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = tInscomService.get(id);
		}
		if (entity == null){
			entity = new TInscom();
		}
		return entity;
	}
	
	@RequiresPermissions("inscom:tInscom:view")
	@RequestMapping(value = {"list", ""})
	public String list(@ModelAttribute("tInscom")TInscom tInscom, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TInscom> page = tInscomService.findPage(new Page<TInscom>(request, response), tInscom); 
		model.addAttribute("page", page);
		return "ins/inscom/tInscomList";
	}

	@RequiresPermissions("inscom:tInscom:view")
	@RequestMapping(value = "form")
	public String form(TInscom tInscom, Model model) {
		model.addAttribute("tInscom", tInscom);
		return "ins/inscom/tInscomForm";
	}

	@RequiresPermissions("inscom:tInscom:edit")
	@RequestMapping(value = "save")
	public String save(TInscom tInscom, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, tInscom)){
			return form(tInscom, model);
		}
		tInscomService.save(tInscom);
		addMessage(redirectAttributes, "保存保险公司成功");
		return "redirect:"+Global.getAdminPath()+"/inscom/tInscom/?repage";
	}
	
	@RequiresPermissions("inscom:tInscom:edit")
	@RequestMapping(value = "delete")
	public String delete(TInscom tInscom, RedirectAttributes redirectAttributes) {
		tInscomService.delete(tInscom);
		addMessage(redirectAttributes, "删除保险公司成功");
		return "redirect:"+Global.getAdminPath()+"/inscom/tInscom/?repage";
	}

}