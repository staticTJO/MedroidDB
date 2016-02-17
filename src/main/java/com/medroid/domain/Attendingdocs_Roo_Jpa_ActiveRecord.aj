// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Attendingdocs;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Attendingdocs_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Attendingdocs.entityManager;
    
    public static final List<String> Attendingdocs.fieldNames4OrderClauseFilter = java.util.Arrays.asList("patient", "doctor");
    
    public static final EntityManager Attendingdocs.entityManager() {
        EntityManager em = new Attendingdocs().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Attendingdocs.countAttendingdocses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Attendingdocs o", Long.class).getSingleResult();
    }
    
    public static List<Attendingdocs> Attendingdocs.findAllAttendingdocses() {
        return entityManager().createQuery("SELECT o FROM Attendingdocs o", Attendingdocs.class).getResultList();
    }
    
    public static List<Attendingdocs> Attendingdocs.findAllAttendingdocses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Attendingdocs o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Attendingdocs.class).getResultList();
    }
    
    public static Attendingdocs Attendingdocs.findAttendingdocs(Long id) {
        if (id == null) return null;
        return entityManager().find(Attendingdocs.class, id);
    }
    
    public static List<Attendingdocs> Attendingdocs.findAttendingdocsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Attendingdocs o", Attendingdocs.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Attendingdocs> Attendingdocs.findAttendingdocsEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Attendingdocs o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Attendingdocs.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Attendingdocs.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Attendingdocs.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Attendingdocs attached = Attendingdocs.findAttendingdocs(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Attendingdocs.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Attendingdocs.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Attendingdocs Attendingdocs.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Attendingdocs merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}