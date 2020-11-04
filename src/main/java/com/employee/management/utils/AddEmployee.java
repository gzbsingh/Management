package com.employee.management.utils;

import java.io.File;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
public class AddEmployee {

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private	int empId;
private File photo;
private String emp_Name;
	
private Date DOB;
private int pinCode;
private	String Email;
private String Qualification;
private Date JoinDate;
private 	String PanNo;
private String empType;
private String father_Name;
private String City;
private String Mobile;
private String BloodGroup;
private String Bank_Acc;
private int Exp;
private double AdharNo;
	
}
