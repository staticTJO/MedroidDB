// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import com.medroid.domain.DoctorMessages;

privileged aspect DoctorMessages_Roo_JavaBean {
    
    public Doctor DoctorMessages.getDoctor() {
        return this.doctor;
    }
    
    public void DoctorMessages.setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
    
    public String DoctorMessages.getDateRecorded() {
        return this.DateRecorded;
    }
    
    public void DoctorMessages.setDateRecorded(String DateRecorded) {
        this.DateRecorded = DateRecorded;
    }
    
    public Boolean DoctorMessages.getIsRead() {
        return this.isRead;
    }
    
    public void DoctorMessages.setIsRead(Boolean isRead) {
        this.isRead = isRead;
    }
    
    public String DoctorMessages.getMessagetxt() {
        return this.messagetxt;
    }
    
    public void DoctorMessages.setMessagetxt(String messagetxt) {
        this.messagetxt = messagetxt;
    }
    
    public int DoctorMessages.getPatientID() {
        return this.PatientID;
    }
    
    public void DoctorMessages.setPatientID(int PatientID) {
        this.PatientID = PatientID;
    }
    
}
