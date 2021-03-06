package com.medroid.domain;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class DoctorNotifications {

    /**
     */
    @NotNull
    @ManyToOne
    private Doctor doctor;

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
    private int PatientID;
}
