package com.employee.management.repositeroy;

import org.springframework.data.jpa.repository.JpaRepository;

import com.employee.management.utils.Addemployee;
import com.employee.management.utils.User;

public interface EmployeeRepo extends JpaRepository<Addemployee,Integer> {

	
	
}
