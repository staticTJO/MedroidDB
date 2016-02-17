package com.medroid.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Attendingdocs {

    /**
     */
    @ManyToOne
    private Patient patient;

    /**
     */
    @ManyToOne
    private Doctor doctor;
}
