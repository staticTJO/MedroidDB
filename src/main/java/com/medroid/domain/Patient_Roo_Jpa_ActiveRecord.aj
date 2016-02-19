// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Patient;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Patient_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Patient.entityManager;
    
    public static final List<String> Patient.fieldNames4OrderClauseFilter = java.util.Arrays.asList("PatientMessages", "PatientNotifications", "PatientMedications", "PatientAllergies", "Diagnosis", "patientID", "FirstName", "LastName", "MiddleName", "Age", "Sex", "DOB", "City", "Prov", "Bloodtype", "status", "HC", "SymptomDesc", "AttendingDoctors", "patientlogin");
    
    public static final EntityManager Patient.entityManager() {
        EntityManager em = new Patient().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Patient.countPatients() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Patient o", Long.class).getSingleResult();
    }
    
    public static List<Patient> Patient.findAllPatients() {
        return entityManager().createQuery("SELECT o FROM Patient o", Patient.class).getResultList();
    }
    
    public static List<Patient> Patient.findAllPatients(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Patient o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Patient.class).getResultList();
    }
    
    public static Patient Patient.findPatient(Long id) {
        if (id == null) return null;
        return entityManager().find(Patient.class, id);
    }
    
    public static List<Patient> Patient.findPatientEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Patient o", Patient.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Patient> Patient.findPatientEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Patient o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Patient.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Patient.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Patient.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Patient attached = Patient.findPatient(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Patient.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Patient.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Patient Patient.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Patient merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
