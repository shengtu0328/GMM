package com.sdo.user.entity;

public class User {
   private String name;
   private String username;
   private String password;
   private String email;
   private String telephone;
   private Double  wallet;
   /*角色*/
   private String role;






public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}


public Double getWallet() {
	return wallet;
}

public void setWallet(Double wallet) {
	this.wallet = wallet;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
   
}
