package org.seckill.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.seckill.entity.Privilege;
import org.seckill.service.PrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/privilege")
public class PrivilegeController {

    private Log log = LogFactory.getLog(this.getClass());

    @Autowired
    private PrivilegeService privilegeService;

    //    ajax json
    @RequestMapping(value = "/{userId}/detail", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String exposer(@PathVariable("userId") String userId) {

        try {
            Privilege privilege = privilegeService.SelectPrivilegeByUser(userId);
            return privilege.toString();
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return null;
    }

    @RequestMapping(value = "/privilege", method = RequestMethod.GET)
    public String exposer(Model model) {
        try {
            List<Privilege> privilegeList = privilegeService.SelectPrivilegeList();
            model.addAttribute("privilege", privilegeList);
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return "privilegelist";
    }
}
