// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Patient;
import com.medroid.domain.PatientNotifications;

privileged aspect PatientNotifications_Roo_JavaBean {
    
    public Patient PatientNotifications.getPatient() {
        return this.patient;
    }
    
    public void PatientNotifications.setPatient(Patient patient) {
        this.patient = patient;
    }
    
    public String PatientNotifications.getDateRecorded() {
        return this.DateRecorded;
    }
    
    public void PatientNotifications.setDateRecorded(String DateRecorded) {
        this.DateRecorded = DateRecorded;
    }
    
    public Boolean PatientNotifications.getIsRead() {
        return this.isRead;
    }
    
    public void PatientNotifications.setIsRead(Boolean isRead) {
        this.isRead = isRead;
    }
    
    public String PatientNotifications.getMessagetxt() {
        return this.messagetxt;
    }
    
    public void PatientNotifications.setMessagetxt(String messagetxt) {
        this.messagetxt = messagetxt;
    }
    
    public int PatientNotifications.getDoctorID() {
        return this.DoctorID;
    }
    
    public void PatientNotifications.setDoctorID(int DoctorID) {
        this.DoctorID = DoctorID;
    }
    
}
