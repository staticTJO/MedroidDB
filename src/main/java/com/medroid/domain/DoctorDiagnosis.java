package com.medroid.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class DoctorDiagnosis {

    /**
     */
    @NotNull
    @ManyToOne
    private Doctor doctor;

    /**
     */
    @NotNull
    @ManyToOne
    private Patient patient;

    /**
     */
    private String Diagnosis;
}
