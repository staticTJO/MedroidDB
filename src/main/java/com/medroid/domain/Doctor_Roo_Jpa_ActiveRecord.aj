// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Doctor_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Doctor.entityManager;
    
    public static final List<String> Doctor.fieldNames4OrderClauseFilter = java.util.Arrays.asList("DoctorMessages", "DoctorNotifications", "DoctorDiagnosis", "doctorID", "FirstName", "LastName", "Specialty", "attendingpatients", "doctorlogin", "status");
    
    public static final EntityManager Doctor.entityManager() {
        EntityManager em = new Doctor().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Doctor.countDoctors() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Doctor o", Long.class).getSingleResult();
    }
    
    public static List<Doctor> Doctor.findAllDoctors() {
        return entityManager().createQuery("SELECT o FROM Doctor o", Doctor.class).getResultList();
    }
    
    public static List<Doctor> Doctor.findAllDoctors(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Doctor o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Doctor.class).getResultList();
    }
    
    public static Doctor Doctor.findDoctor(Long id) {
        if (id == null) return null;
        return entityManager().find(Doctor.class, id);
    }
    
    public static List<Doctor> Doctor.findDoctorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Doctor o", Doctor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Doctor> Doctor.findDoctorEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Doctor o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Doctor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Doctor.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Doctor.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Doctor attached = Doctor.findDoctor(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Doctor.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Doctor.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Doctor Doctor.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Doctor merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
