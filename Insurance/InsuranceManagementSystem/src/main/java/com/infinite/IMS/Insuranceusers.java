package com.infinite.IMS;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login")
public class Insuranceusers {
	
	
	
	@Id
	@Column(name="Username")
	private String username;
	
	@Column(name="Password")
	private String password;

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

	@Override
	public String toString() {
		return "Insuranceusers [username=" + username + ", password=" + password + "]";
	}
	
	
	

}
