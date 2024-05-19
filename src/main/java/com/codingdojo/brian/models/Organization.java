package com.codingdojo.brian.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="organizations")
public class Organization {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message="Organization name is obligatory.")
	@Size(min=2, message="Organization name must be at least 2 characters")
	private String orgaName;
	@NotEmpty(message="El acronimo es obligatorio")
	@Size(min=2, message="El acronimo debe tener al menos 2 caracteres.")
	private String acronym;
	@NotEmpty(message="Email is obligatory.")
	@Email
	private String email;
	@Min(8)
	@NotNull
	private Integer tel;
	@NotNull(message="El E-RUT es obligatorio.")
    private String rut;
	/*TIPOS DE USUARIO:
	 1.-ADM
	 2.-ORG
	 3.-USER
	 */
	private Integer userType=2;
	@NotEmpty
	private String description;
	private String category;
	@NotEmpty(message="Password is obligatory")
	@Size(min=6,message="Password must be at least 6 characters")
	@NotEmpty(message="category is obligatory")
	private String password;
	@Transient
	@NotEmpty(message="Password is obligatory")
	@Size(min=6,message="Password must be at least 6 characters")
	private String confirm;
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	@OneToMany(mappedBy = "ong_review", cascade = CascadeType.ALL)
	private List<Review> reviews;
	
	public Organization() {
	}


	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getOrgaName() {
		return orgaName;
	}



	public void setOrgaName(String orgaName) {
		this.orgaName = orgaName;
	}



	public String getAcronym() {
		return acronym;
	}



	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getConfirm() {
		return confirm;
	}



	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}



	public Date getCreatedAt() {
		return createdAt;
	}



	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}



	public Date getUpdatedAt() {
		return updatedAt;
	}



	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@PrePersist
	public void onCreate() {
		this.createdAt = new Date();
	}
	@PreUpdate
	public void onUpdate() {
		this.updatedAt = new Date();
	}


	public Integer getTel() {
		return tel;
	}


	public void setTel(Integer tel) {
		this.tel = tel;
	}


	public String getRut() {
		return rut;
	}


	public void setRut(String rut) {
		this.rut = rut;
	}


	public Integer getUserType() {
		return userType;
	}


	public void setUserType(Integer userType) {
		this.userType = userType;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public List<Review> getReviews() {
		return reviews;
	}


	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
