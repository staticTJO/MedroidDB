// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Patient;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Patient_Roo_Jpa_Entity {
    
    declare @type: Patient: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Patient.id;
    
    @Version
    @Column(name = "version")
    private Integer Patient.version;
    
    public Long Patient.getId() {
        return this.id;
    }
    
    public void Patient.setId(Long id) {
        this.id = id;
    }
    
    public Integer Patient.getVersion() {
        return this.version;
    }
    
    public void Patient.setVersion(Integer version) {
        this.version = version;
    }
    
}
