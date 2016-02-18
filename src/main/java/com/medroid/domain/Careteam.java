package com.medroid.domain;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Careteam {

    /**
     */
    @ManyToOne
    private Patient patient;

    /**
     */
    @ManyToOne
    private Doctor doctor;
}
