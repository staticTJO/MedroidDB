package com.medroid.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Doctor {

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "doctor")
    private Set<DoctorMessages> DoctorMessages = new HashSet<DoctorMessages>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "doctor")
    private Set<DoctorNotifications> DoctorNotifications = new HashSet<DoctorNotifications>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "doctor")
    private Set<DoctorDiagnosis> DoctorDiagnosis = new HashSet<DoctorDiagnosis>();

    @NotNull
    @Column(name = "id", unique = true, insertable = false, updatable = false)
    private int doctorID;

    /**
     */
    @NotNull
    @Size(min = 3)
    private String FirstName;

    /**
     */
    @NotNull
    @Size(min = 3)
    private String LastName;

    /**
     */
    @NotNull
    private String Specialty;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "doctor")
    private Set<Careteam> attendingpatients = new HashSet<Careteam>();

    /**
     */
    @OneToOne
    private Doctor doctorlogin;

    /**
     */
    @OneToOne
    private DoctorStatus status;
}
