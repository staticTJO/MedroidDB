// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.PatientDischarge;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PatientDischarge_Roo_Jpa_Entity {
    
    declare @type: PatientDischarge: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PatientDischarge.id;
    
    @Version
    @Column(name = "version")
    private Integer PatientDischarge.version;
    
    public Long PatientDischarge.getId() {
        return this.id;
    }
    
    public void PatientDischarge.setId(Long id) {
        this.id = id;
    }
    
    public Integer PatientDischarge.getVersion() {
        return this.version;
    }
    
    public void PatientDischarge.setVersion(Integer version) {
        this.version = version;
    }
    
}