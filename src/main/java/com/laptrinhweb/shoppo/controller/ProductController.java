package com.laptrinhweb.shoppo.controller;

import com.laptrinhweb.shoppo.entity.Category;
import com.laptrinhweb.shoppo.entity.Product;
import com.laptrinhweb.shoppo.exception.MyResourceNotFoundException;
import com.laptrinhweb.shoppo.service.Impl.CategoryServiceImpl;
import com.laptrinhweb.shoppo.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Value("${upoadDir}")
	private String uploadFolder;

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryServiceImpl categoryService;

	private static final Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@GetMapping("/productdetails")
	String showProductDetails(@RequestParam("code") String code, Product product,
			Model model) {
		try {
			log.info("Code :: " + code);
			if (code != null && code.startsWith("P")) {
				product = productService.getProductByCode(code);
				log.info("products :: " + product);
				if (product != null) {
					model.addAttribute("product", product);
					return "productdetails";
				}
				return "redirect:/home";
			}
		return "redirect:/home";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}	
	}

	@GetMapping("/all")
	String show(Model map) {
		List<Product> product = productService.getAllActiveProducts();
		List<Category> categories= categoryService.getAllCategory();
		map.addAttribute("products", product);
		map.addAttribute("categories", categories);
		return "product_all";
	}

	@PostMapping("/search")
	String searchProducts(@RequestParam(value = "keyword", required = true) String keyword, Model model) {
		try {
			if (keyword != null) {
				List<Product> products = productService.searchProducts(keyword.trim());
				log.info("products :: "+products);
				model.addAttribute("products", products);
				return "search";
			}
			return "redirect:/home";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}
	}
	
	@PostMapping("/checkout")
	String productCheckout(@RequestParam("code") String code,HttpServletRequest request, HttpSession session, Product product, Model model) {
		try {
			session = request.getSession(false);
			String email = (String) session.getAttribute("email");
			if(email == null) {
				String backUrl = request.getHeader("referer");
				log.info("backUrl :: "+backUrl);
				session.setAttribute("backUrl", backUrl);
				return "redirect:/customer/login";
			}
			log.info("Code :: "+code);
			if (code != null && code.startsWith("P")) {
				product = productService.getProductByCode(code);
				log.info("product :: " + product.getName());
				if (product != null) {
					model.addAttribute("code", code);
					model.addAttribute("image", product.getImage());
					model.addAttribute("itemName", product.getName());
					model.addAttribute("quantity", "1");
					model.addAttribute("price", product.getPrice());
					model.addAttribute("totalPrice", product.getPrice());
					session.setAttribute("code", code);
					session.setAttribute("itemId", product.getId());
					session.setAttribute("quantity", 1);
					session.setAttribute("price", product.getPrice());
					session.setAttribute("totalPrice", product.getPrice());
					return "checkout";
				}
			}
			return "redirect:/page404";
		}  catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}
	}

	@ExceptionHandler(MyResourceNotFoundException.class)
	public ResponseEntity<?> handleStorageFileNotFound(MyResourceNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}
}
