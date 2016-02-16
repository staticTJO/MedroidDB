package com.medroid.domain;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PatientMedications {

    /**
     */
    @NotNull
    @ManyToOne
    private Patient patient;

    /**
     */
    private String Allergy;

    /**
     */
    private String Medication;
}
