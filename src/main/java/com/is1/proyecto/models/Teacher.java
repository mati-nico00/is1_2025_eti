package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("teacher")
public class Teacher extends Model {

    public String getEmail() {
        return getString("email"); 
    }

    public void setEmail(String email) {
        set("email", email); 
    }

    public String getDegree() {
        return getString("degree"); 
    }

    public void setDegree(String degree) {
        set("degree", degree); 
    }

}