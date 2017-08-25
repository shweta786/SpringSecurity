/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.security.dao;

import com.security.model.Employee;
import com.security.util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SHWETA
 */
@Repository
public class EmployeeDaoImpl implements EmployeeDao {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory() {
        this.sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public void addEmployee(Employee employee) {
        Session session = this.sessionFactory.getCurrentSession();
        if(employee.getEmail()=="" && employee.getName()=="") {
            return;
        }
        session.beginTransaction();
        session.save(employee);
        session.getTransaction().commit();
    }

    @Override
    public List<Employee> getAllEmployees() {
        Session session = this.sessionFactory.getCurrentSession();
        session.beginTransaction();
        List<Employee> employeeList = session.createQuery("from Employee").list();
        session.getTransaction().commit();
        return employeeList;
    }

    @Override
    public void deleteEmployee(Integer employeeId) {
        Session session = this.sessionFactory.getCurrentSession();
        session.beginTransaction();
        Employee employee = (Employee) session.load(Employee.class, (int)employeeId);
        if (employee != null) {
            session.delete(employee);
            session.getTransaction().commit();
        }
        return;
    }

}
