/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.security.service;

import com.security.model.Employee;
import java.util.List;

/**
 *
 * @author SHWETA
 */
public interface EmployeeService {
    public void addEmployee(Employee employee);
    public List<Employee> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}
