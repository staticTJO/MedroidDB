package com.medroid.domain;
import java.util.Date;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class PatientMessages {

    /**
     */
    @NotNull
    @ManyToOne
    private Patient patient;

    /**
     */
    private String DateRecorded;

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
