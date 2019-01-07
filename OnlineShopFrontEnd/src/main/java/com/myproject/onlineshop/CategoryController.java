package com.myproject.onlineshop;


import com.myproject.onlineshop.model.Category;
import com.myproject.onlineshop.model.CategoryDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CategoryController {

    private final CategoryDAO categoryDAO;

    public CategoryController(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    @ModelAttribute
    public void addCategoryList(Model m) {
        m.addAttribute("clist", categoryDAO.listCategory());
    }


    @RequestMapping(value = "categorylist")
    public ModelAndView viewCategoryList(Model m) {
        ModelAndView m1 = new ModelAndView("ViewCategoryList");
        return m1;
    }

    @RequestMapping(value = "/Category")
    public ModelAndView CategoryPage() {
        ModelAndView m1 = new ModelAndView("AddCategory");
        return m1;
    }

    @RequestMapping(value = "addCategory")
    public ModelAndView addCategory(HttpServletRequest request) {
        int cid = Integer.parseInt(request.getParameter("cid"));
        String cname = request.getParameter("cname");

        Category c = new Category();
        c.setCid(cid);
        c.setCname(cname);

        categoryDAO.addCategory(c);

        ModelAndView m1 = new ModelAndView("success");
        return m1;
    }
}
