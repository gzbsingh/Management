package com.employee.management.utils;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.boot.context.properties.ConstructorBinding;

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
@ConstructorBinding
@Entity
public class User {
@Id	
@NonNull
private String username;
@NonNull
private String password ;
}
