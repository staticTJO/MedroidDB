// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.Doctor;
import com.medroid.domain.DoctorDiagnosis;
import com.medroid.domain.Patient;

privileged aspect DoctorDiagnosis_Roo_JavaBean {
    
    public Doctor DoctorDiagnosis.getDoctor() {
        return this.doctor;
    }
    
    public void DoctorDiagnosis.setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
    
    public Patient DoctorDiagnosis.getPatient() {
        return this.patient;
    }
    
    public void DoctorDiagnosis.setPatient(Patient patient) {
        this.patient = patient;
    }
    
    public String DoctorDiagnosis.getDiagnosis() {
        return this.Diagnosis;
    }
    
    public void DoctorDiagnosis.setDiagnosis(String Diagnosis) {
        this.Diagnosis = Diagnosis;
    }
    
}
