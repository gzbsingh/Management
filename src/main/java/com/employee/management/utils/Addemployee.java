package com.employee.management.utils;

import java.io.File;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor

public class Addemployee {

public Addemployee() {
		// TODO Auto-generated constructor stub
	}
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private	Integer empId;
@Lob
private byte[] photo;
private String emp_Name;
private String father_Name;
private String DOB;
private String City;
private Integer pinCode;
private String Mobile;
private	String Email;
private String BloodGroup;
private String Qualification;
private String Bank_Acc;
private String JoinDate;
private int Exp;
private String PanNo;
private Double AadharNo;
private String empType;





}
