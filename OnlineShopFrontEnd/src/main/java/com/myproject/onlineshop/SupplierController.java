package com.myproject.onlineshop;

import com.myproject.onlineshop.model.Supplier;
import com.myproject.onlineshop.model.SupplierDAOImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SupplierController {

    private final SupplierDAOImpl supplierDAO;

    public SupplierController(SupplierDAOImpl supplierDAO) {
        this.supplierDAO = supplierDAO;
    }

    @RequestMapping(value = "addSupplier")
    public ModelAndView addSupplier(HttpServletRequest request) {
        int sid = Integer.parseInt(request.getParameter("sid"));
        String sname = request.getParameter("sname");

        Supplier s = new Supplier();
        s.setSid(sid);
        s.setSname(sname);

        supplierDAO.addSupplier(s);

        ModelAndView m1 = new ModelAndView("success");
        return m1;
    }

    @RequestMapping(value = "/suppliers")
    public ModelAndView SupplierPage() {
        ModelAndView m1 = new ModelAndView("SupplierDetails");
        return m1;
    }

    @ModelAttribute
    public void addSupplierList(Model m) {

        m.addAttribute("slist", supplierDAO.listSupplier());
    }

    @RequestMapping(value = "supplierlist")
    public ModelAndView viewSupplierList(Model m) {
        ModelAndView m1 = new ModelAndView("SuppliersList");
        return m1;
    }
}

