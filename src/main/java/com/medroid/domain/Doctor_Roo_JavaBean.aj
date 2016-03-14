// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Careteam;
import com.medroid.domain.Doctor;
import com.medroid.domain.DoctorDiagnosis;
import com.medroid.domain.DoctorMessages;
import com.medroid.domain.DoctorNotifications;
import com.medroid.domain.DoctorStatus;
import java.util.Set;

privileged aspect Doctor_Roo_JavaBean {
    
    public Set<DoctorMessages> Doctor.getDoctorMessages() {
        return this.DoctorMessages;
    }
    
    public void Doctor.setDoctorMessages(Set<DoctorMessages> DoctorMessages) {
        this.DoctorMessages = DoctorMessages;
    }
    
    public Set<DoctorNotifications> Doctor.getDoctorNotifications() {
        return this.DoctorNotifications;
    }
    
    public void Doctor.setDoctorNotifications(Set<DoctorNotifications> DoctorNotifications) {
        this.DoctorNotifications = DoctorNotifications;
    }
    
    public Set<DoctorDiagnosis> Doctor.getDoctorDiagnosis() {
        return this.DoctorDiagnosis;
    }
    
    public void Doctor.setDoctorDiagnosis(Set<DoctorDiagnosis> DoctorDiagnosis) {
        this.DoctorDiagnosis = DoctorDiagnosis;
    }
    
    public int Doctor.getDoctorID() {
        return this.doctorID;
    }
    
    public void Doctor.setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }
    
    public String Doctor.getFirstName() {
        return this.FirstName;
    }
    
    public void Doctor.setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }
    
    public String Doctor.getLastName() {
        return this.LastName;
    }
    
    public void Doctor.setLastName(String LastName) {
        this.LastName = LastName;
    }
    
    public String Doctor.getSpecialty() {
        return this.Specialty;
    }
    
    public void Doctor.setSpecialty(String Specialty) {
        this.Specialty = Specialty;
    }
    
    public Set<Careteam> Doctor.getAttendingpatients() {
        return this.attendingpatients;
    }
    
    public void Doctor.setAttendingpatients(Set<Careteam> attendingpatients) {
        this.attendingpatients = attendingpatients;
    }
    
    public Doctor Doctor.getDoctorlogin() {
        return this.doctorlogin;
    }
    
    public void Doctor.setDoctorlogin(Doctor doctorlogin) {
        this.doctorlogin = doctorlogin;
    }
    
    public DoctorStatus Doctor.getStatus() {
        return this.status;
    }
    
    public void Doctor.setStatus(DoctorStatus status) {
        this.status = status;
    }
    
}
