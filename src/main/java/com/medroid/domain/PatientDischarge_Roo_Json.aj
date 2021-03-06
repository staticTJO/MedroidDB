// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.medroid.domain;

import com.medroid.domain.PatientDischarge;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PatientDischarge_Roo_Json {
    
    public String PatientDischarge.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PatientDischarge.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PatientDischarge PatientDischarge.fromJsonToPatientDischarge(String json) {
        return new JSONDeserializer<PatientDischarge>()
        .use(null, PatientDischarge.class).deserialize(json);
    }
    
    public static String PatientDischarge.toJsonArray(Collection<PatientDischarge> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PatientDischarge.toJsonArray(Collection<PatientDischarge> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PatientDischarge> PatientDischarge.fromJsonArrayToPatientDischarges(String json) {
        return new JSONDeserializer<List<PatientDischarge>>()
        .use("values", PatientDischarge.class).deserialize(json);
    }
    
}
