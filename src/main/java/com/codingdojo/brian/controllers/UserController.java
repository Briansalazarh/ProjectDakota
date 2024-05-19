package com.codingdojo.brian.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.brian.models.User;
import com.codingdojo.brian.services.AppServices;

@Controller
public class UserController {
	@Autowired
	AppServices service;
	
	@GetMapping("/inicia_sesion")
	public String index(@ModelAttribute ("newUser") User user) {
		return "index.jsp";
	}
	@PostMapping("/register")
	public String userRegister(@Valid @ModelAttribute ("newUser") User newUser,
							   BindingResult result,
							   HttpSession session) {
		service.register(newUser, result);
		if(result.hasErrors()) {
			
			return "index.jsp";
		}
		else {
			//guardar objeto en sesion
			session.setAttribute("userInSession", newUser);
			return "redirect:/plush";
		}
	}
	@PostMapping("/login")
	public String login(@RequestParam ("email") String email,
						@RequestParam ("password") String password,
						RedirectAttributes redirectAttributes,
						HttpSession session) {
		//enviar email y contraseña para q el servicio verifique que este correcto
		User userLogin = service.login(email,password);
		if(userLogin==null) {
			redirectAttributes.addFlashAttribute("error_login", "The email/password is incorrect.");
			return "redirect:/inicia_sesion";
		}
		else {
			session.setAttribute("userInSession", userLogin);
			return "redirect:/plush";  
		}
		 
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userInSession");
		return "redirect:/plush";
	}
	
	@GetMapping("/editar/{id}")
	public String uEdit(@ModelAttribute("userEdit") User user,
						@PathVariable ("id") Long id,
						HttpSession session,Model model) {
		User userInSession = (User)session.getAttribute("userInSession");
		
		if(userInSession == null) {
			return "redirect:/plush";
		}
		User userEdit= service.findUser(id);
		model.addAttribute("user", userEdit);
		return "editar.jsp";
	}
	
	@PutMapping("/update")
	public String actualizarDatos(@Valid @ModelAttribute("userEdit") User userEdit,
								  BindingResult result,
								  HttpSession session) {
		User userInSession = (User) session.getAttribute("userInSession");
		if(userInSession==null) {
			return "redirect:/plush";
		}
		if(result.hasErrors()) {
			return "editar.jsp";
		}
		else {
			service.saveUser(userEdit);
			return "redirect:/perfil/"+userEdit.getId();
		}
	}
	
	
	
}
