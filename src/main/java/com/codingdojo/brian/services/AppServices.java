package com.codingdojo.brian.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.brian.models.Organization;
import com.codingdojo.brian.models.Review;
import com.codingdojo.brian.models.User;
import com.codingdojo.brian.repository.OrganizationRepository;
import com.codingdojo.brian.repository.ReviewRepository;
import com.codingdojo.brian.repository.UserRepository;

@Service
public class AppServices {
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private ReviewRepository reviewRepo;
	@Autowired
	private OrganizationRepository organizationRepo;
	
	public User register(User newUser, BindingResult result) {
		
		//Revisamos que el correo que recibimos no exista en nuestra tabla de usuarios
		String email = newUser.getEmail();
		User isUser = userRepo.findByEmail(email); //NULL o Objeto Usuario
		if(isUser != null) {
			//El correo ya está registrado
			//result.rejectValue("email", "Unique", "The email is already in use");
			result.rejectValue("email", "Unique", "The email is already in use");
		}
		
		//Comparamos contraseñas 
		String password = newUser.getPassword();
		String confirm = newUser.getConfirm();
		if(!password.equals(confirm)) { //! -> Lo contrario
			//result.rejectValue("confirm", "Matches", "The passwords don't match");
			result.rejectValue("confirm", "Matches", "The passwords don't match");
		}
		
		//Si NO existe error, guardamos!
		if(result.hasErrors()) {
			return null;
		} else {
			//Encriptamos contraseña
			//String contra_encriptada = BCrypt.hashpw(contrasena, BCrypt.gensalt());
			String pass_encript = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(pass_encript);
			return userRepo.save(newUser);
		}	
		
	}
	
	public User login(String email, String password) {
		
		//Buscar que el correo recibido esté en BD
		User userExists = userRepo.findByEmail(email); //NULL o Objeto de User
		if(userExists == null) {
			return null;
		}
		
		//Comparamos contraseñas
		//BCrypt.checkpw(Contraseña NO encriptada, Contraseña encriptada) -> True o False
		if(BCrypt.checkpw(password, userExists.getPassword())) {
			return userExists;
		} else {
			return null;
		}
		
	}
	
	
	public Organization registerOng(Organization newOng, BindingResult result) {
		
		//Revisamos que el correo que recibimos no exista en nuestra tabla de usuarios
		String email = newOng.getEmail();
		Organization isOng = organizationRepo.findByEmail(email); //NULL o Objeto Usuario
		if(isOng != null) {
			result.rejectValue("email", "Unique", "The email is already in use");
		}
		
		String password = newOng.getPassword();
		String confirm = newOng.getConfirm();
		if(!password.equals(confirm)) { //! -> Lo contrario
			result.rejectValue("confirm", "Matches", "The passwords don't match");
		}
		
		if(result.hasErrors()) {
			return null;
		} else {
			String pass_encript = BCrypt.hashpw(newOng.getPassword(), BCrypt.gensalt());
			newOng.setPassword(pass_encript);
			return organizationRepo.save(newOng);
		}	
		
	}
	
	public Organization loginOng(String email, String password) {
		
		Organization ongExists = organizationRepo.findByEmail(email); //NULL o Objeto de User
		if(ongExists == null) {
			return null;
		}
		if(BCrypt.checkpw(password, ongExists.getPassword())) {
			return ongExists;
		} else {
			return null;
		}
	}
	
	
	
	public Organization findOrganization(Long id) {
		return organizationRepo.findById(id).orElse(null);
	}
	
	public Organization saveOrganization(Organization organization) {
		return organizationRepo.save(organization);
	}
	
	/*Encontrar un usuario en base a su id*/
	public User findUser(Long id) {
		return userRepo.findById(id).orElse(null);
	}
	
	/*Guarda cambios en usuario*/
	public User saveUser(User user) {
		String pass_encript = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(pass_encript);
		return userRepo.save(user);
	}
	
	// mostrar y ordenar lista de reseña
	
	public Review saveReview(Review review) {
        return reviewRepo.save(review);
    }
    public Review findReview(Long Id) {
        return reviewRepo.findById(Id).orElse(null);
    }

    // mostrar una lista de reseña
    public List<Review> showReview(){
        return reviewRepo.findAll();
    }
    
    public void deleteReview(Long id) {
        reviewRepo.deleteById(id);
    }
    
}
