// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.DoctorNotifications;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect DoctorNotifications_Roo_Jpa_Entity {
    
    declare @type: DoctorNotifications: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DoctorNotifications.id;
    
    @Version
    @Column(name = "version")
    private Integer DoctorNotifications.version;
    
    public Long DoctorNotifications.getId() {
        return this.id;
    }
    
    public void DoctorNotifications.setId(Long id) {
        this.id = id;
    }
    
    public Integer DoctorNotifications.getVersion() {
        return this.version;
    }
    
    public void DoctorNotifications.setVersion(Integer version) {
        this.version = version;
    }
    
}
