// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.PatientMedications;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PatientMedications_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PatientMedications.entityManager;
    
    public static final List<String> PatientMedications.fieldNames4OrderClauseFilter = java.util.Arrays.asList("patient", "Medication");
    
    public static final EntityManager PatientMedications.entityManager() {
        EntityManager em = new PatientMedications().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PatientMedications.countPatientMedicationses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PatientMedications o", Long.class).getSingleResult();
    }
    
    public static List<PatientMedications> PatientMedications.findAllPatientMedicationses() {
        return entityManager().createQuery("SELECT o FROM PatientMedications o", PatientMedications.class).getResultList();
    }
    
    public static List<PatientMedications> PatientMedications.findAllPatientMedicationses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PatientMedications o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PatientMedications.class).getResultList();
    }
    
    public static PatientMedications PatientMedications.findPatientMedications(Long id) {
        if (id == null) return null;
        return entityManager().find(PatientMedications.class, id);
    }
    
    public static List<PatientMedications> PatientMedications.findPatientMedicationsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PatientMedications o", PatientMedications.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PatientMedications> PatientMedications.findPatientMedicationsEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PatientMedications o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PatientMedications.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PatientMedications.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PatientMedications.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PatientMedications attached = PatientMedications.findPatientMedications(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PatientMedications.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PatientMedications.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PatientMedications PatientMedications.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PatientMedications merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
