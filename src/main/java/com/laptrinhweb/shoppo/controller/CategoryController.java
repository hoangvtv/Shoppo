package com.laptrinhweb.shoppo.controller;

import com.laptrinhweb.shoppo.entity.Category;
import com.laptrinhweb.shoppo.service.Impl.CategoryAdmServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {

    @Autowired
    private CategoryAdmServiceImpl categoryService;

    private final Logger log = LoggerFactory.getLogger(this.getClass());


    @GetMapping("/view")
    public String view(Model map, HttpServletRequest request,HttpSession session) {
        String aemail = (String) session.getAttribute("aemail");
        if(aemail == null) {
            return "redirect:/home";
        }
        List<Category> categories = categoryService.findAllCategory();
        map.addAttribute("categories", categories);
        return "admin_category_view";
    }

    @GetMapping("/add")
    public String addCategory(HttpSession session) {
        String aemail = (String) session.getAttribute("aemail");
        if(aemail == null) {
            return "redirect:/home";
        }
        return "add_category";
    }

    @PostMapping("/saveCategory")
    public @ResponseBody ResponseEntity<?> createCategory(@RequestParam("name") String name , Model model, HttpServletRequest request) {

          try {
              Category category= new Category();
              category.setName(name);

//              boolean flag = categoryService.saveCategory(category);
              System.out.println("Category: " + name);

//            if (flag) {
//                log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
//                return new ResponseEntity<>("Category Added Successfully.", HttpStatus.OK);
//            }
            return new ResponseEntity<>("Oops! Something Went Wrong.", HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }


    @GetMapping("/edit/{id}")
    public String editCategory(@PathVariable("id") Long id, Category category, Model map, HttpSession session) {
        String aemail = (String) session.getAttribute("aemail");
        if(aemail == null) {
            return "redirect:/home";
        }
        category = categoryService.findById(id);
        if (category != null) {
            map.addAttribute("id", id);
            map.addAttribute("category", category);
            return "edit_category";
        }
        map.addAttribute("error", "Category Not Found With This Code.");
        return "edit_category";
    }

    @PostMapping("/editCategory")
    public @ResponseBody ResponseEntity<?> updateCategory(@RequestParam("name") String name,Model model, HttpServletRequest request, HttpSession session )  {
        try {
            Long id = (Long) session.getAttribute("id");
            categoryService.updateCategory(id, name);
            session.removeAttribute("id");

            return new ResponseEntity<>("Category Updated Successfully.", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>("Oops! Something Went Wrong.", HttpStatus.BAD_REQUEST);
        }
    }


}
