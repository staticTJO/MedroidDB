// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.PatientMedications;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PatientMedications_Roo_Json {
    
    public String PatientMedications.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PatientMedications.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PatientMedications PatientMedications.fromJsonToPatientMedications(String json) {
        return new JSONDeserializer<PatientMedications>()
        .use(null, PatientMedications.class).deserialize(json);
    }
    
    public static String PatientMedications.toJsonArray(Collection<PatientMedications> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PatientMedications.toJsonArray(Collection<PatientMedications> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PatientMedications> PatientMedications.fromJsonArrayToPatientMedicationses(String json) {
        return new JSONDeserializer<List<PatientMedications>>()
        .use("values", PatientMedications.class).deserialize(json);
    }
    
}