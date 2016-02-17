package com.medroid.domain;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PatientAllergies {

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn
    private Patient patient;

    /**
     */
    private String Allergy;
}
