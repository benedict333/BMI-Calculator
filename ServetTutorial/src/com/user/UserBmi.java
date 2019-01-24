package com.user;

public class UserBmi {
	private String firstName;
	private String lastName;
	private double weight;
	private double height;
	private String Bmi;
	private double unformattedBmi;
	
	public double getUnformattedBmi() {
		return unformattedBmi;
	}
	public void setUnformattedBmi(double unformattedBmi) {
		this.unformattedBmi = unformattedBmi;
	}
	public UserBmi (){}
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
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public String getBmi() {
		return Bmi;
	}
	public void setBmi(String bmi) {
		Bmi = bmi;
	}
	
	
}
