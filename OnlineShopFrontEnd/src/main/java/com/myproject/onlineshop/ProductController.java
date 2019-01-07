package com.myproject.onlineshop;

import com.myproject.onlineshop.model.*;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.Blob;
import java.util.List;

@Controller
public class ProductController {


    private final ProductDAO productDAO;
    private final CategoryDAO categoryDAO;

    public ProductController(ProductDAO productDAO, CategoryDAO categoryDAO) {
        this.productDAO = productDAO;
        this.categoryDAO = categoryDAO;
    }




    @RequestMapping(value = "addProduct")
    public ModelAndView addProduct(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {

        int id = Integer.parseInt(request.getParameter("pid"));
        String pname = request.getParameter("pname");
        int pcost = Integer.parseInt(request.getParameter("price"));
        int cid = Integer.parseInt(request.getParameter("category"));


        if (id != 0) {
            Category c = categoryDAO.findById(cid);
            Product p = new Product();
            p.setCategoryid(c);
            p.setPid(id);
            p.setPname(pname);
            p.setPcost(pcost);


            String originalfile = file.getOriginalFilename();
            DBConfig db = new DBConfig();
            Session sess = db.getSess();
            Blob blob = Hibernate.getLobCreator(sess).createBlob(file.getBytes());
            p.setP_image(blob);
            boolean b = productDAO.insertProductAction(p);

			 /*String filepath = request.getSession().getServletContext().getRealPath("/");

		        System.out.println(filepath+originalfile);
		        try {
		        	System.out.println("In");
		        	byte imagebyte[] = file.getBytes();
		        	BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+originalfile));
		        	//System.out.println("Path"+fos);
		        	fos.write(imagebyte);
		        	fos.close();
		        	} catch (IOException e) {
		        	e.printStackTrace();
		        	} catch (Exception e) {
		        	// TODO Auto-generated catch block
		        	e.printStackTrace();
		        	}*/

        }
        ModelAndView m1 = new ModelAndView("success");
        return m1;
    }

    @RequestMapping(value = "productlistview")
    public ModelAndView getlist() {
        ModelAndView mv = new ModelAndView("ViewProductList");
        List<Product> plist = productDAO.listProduct();
        mv.addObject("plist", plist);
        return mv;
    }

}
