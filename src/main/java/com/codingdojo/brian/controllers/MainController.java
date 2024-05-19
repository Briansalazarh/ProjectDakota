package com.codingdojo.brian.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.brian.models.Organization;
import com.codingdojo.brian.models.Review;
import com.codingdojo.brian.models.User;
import com.codingdojo.brian.services.AppServices;

@Controller
public class MainController {
	@Autowired
	AppServices service;
	
	@GetMapping("/plush")
	public String home(HttpSession session) {
		session.getAttribute("userInSession");
		
		return "home.jsp";
	}

	@GetMapping("/nuestra-mision")
	public String nuestraMision(HttpSession session) {
		session.getAttribute("userInSession");
		return "info.jsp";
	}
	
	@GetMapping("/contactanos")
	public String contacto(HttpSession session) {
		session.getAttribute("userInSession");
		return "info.jsp";
	}
	@GetMapping("/donaciones")
	public String donaciones(HttpSession session) {
		session.getAttribute("userInSession");
		return "donaciones.jsp";
	}
	
	@GetMapping("/perfil/{id}")
	public String perfil(HttpSession session,Model model,
						@PathVariable ("id") Long id) {
		User userInSession = (User) session.getAttribute("userInSession");
		if(userInSession==null) {
			return "redirect:/plush";
		}
		User userId= service.findUser(id);
		model.addAttribute("user",userId);
		return "perfil.jsp";
	}
	
	
	@GetMapping("/perfil_ong/{id}")
	public String perfilONG(HttpSession session,Model model,
							@PathVariable("id")Long id) {
		Organization ongInSession = (Organization) session.getAttribute("userInSession");
		
		model.addAttribute("ong", ongInSession);
		if(ongInSession==null) {
			return "redirect:/plush";
		}
		
		
		return "perfilOng.jsp";
	}
	
	@GetMapping("/campañas")
	public String campañas(HttpSession session,Model model) {
		session.getAttribute("userInSession");
		return "campañas.jsp";
	}
	@PostMapping("/CreateReview")
	public String review(@Valid @ModelAttribute("review") Review review,
						 BindingResult result,
						 HttpSession session,
						 Model model) {



		if(result.hasErrors()) {
			model.addAttribute("user", review.getAuthor());
			return "Reviews.jsp";
		} else {
			service.saveReview(review);

			return "redirect:/reviews";
		}
	}
	@GetMapping("/reviews")
	public String review(@ModelAttribute("review") Review review,
						 @ModelAttribute("user") User user,HttpSession session,
						 Model model) {
		User userInSession = (User) session.getAttribute("userInSession");
		if(userInSession==null) {
			return "redirect:/inicia_sesion";
		}
		model.addAttribute("rev", service.showReview());
        model.addAttribute("user", user);
        model.addAttribute("review", review);
	    return "Reviews.jsp";
	}
	@DeleteMapping("/ReviewDelete/{id}")
    public String deleteReview(@PathVariable("id") Long id, 
                               HttpSession session, 
                               Model model) {
        User userInMethod = (User) session.getAttribute("userInSession");

        if (userInMethod == null) {
            return "redirect:/plush";
        }

        Review review = service.findReview(id);

        if (review == null || !review.getAuthor().getId().equals(userInMethod.getId())) {
            return "redirect:/plush";
        }

        service.deleteReview(id);

        return "redirect:/reviews";
    }
}
