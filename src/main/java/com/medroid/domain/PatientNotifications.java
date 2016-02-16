package com.medroid.domain;
import java.util.Date;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PatientNotifications {
    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn
    private Patient patient;
    
    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DateRecorded;

    /**
     */
    private Boolean isRead;

    /**
     */
    private String messagetxt;

    /**
     */
    @NotNull
    private int DoctorID;
}
