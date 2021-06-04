package com.itn.springwebapp.model;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
@Entity
@Table(name="user_detail")
public class UserDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ud_id")
	private int id;
	
	@NotNull
	private String firstName;
	@NotNull
	private String lastName;
	@NotNull
	@Column(unique=true)
	private String email;
	@NotNull
	@Column(unique=true)
	@Size(min=7, max=10)
	private String phone;
	@NotNull	
	private LocalDate dob;
	
	private String active;
	@Transient
	private String authority;
	
	private String image;
	@NotNull
	@Column(unique=true)
	private String username;
	@NotNull
	private String password;
	
	@OneToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL, mappedBy="userDetail")
    private UserRole userRole;

	public UserDetail() {
		super();
	}

	public UserDetail(int id, String firstName, String lastName, String email, String phone, LocalDate dob,
			String active, String authority, String image, String username, String password, UserRole userRole) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.active = active;
		this.authority = authority;
		this.image = image;
		this.username = username;
		this.password = password;
		this.userRole = userRole;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return "UserDetail [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", phone=" + phone + ", dob=" + dob + ", active=" + active + ", authority=" + authority + ", image="
				+ image + ", username=" + username + ", password=" + password +"]";
	}
	
	

}
