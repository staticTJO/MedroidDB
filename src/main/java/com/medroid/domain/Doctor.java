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
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
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
    @Column(name = "id", unique = true, insertable = false, updatable = false )
    private int doctorID;

    /**
     */
    @NotNull
    @Size(min = 8)
    private String Password;

    /**
     */
    @NotNull
    private String UserName;

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
    @NotNull
    private String status;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<CareTeam> Careteams = new HashSet<CareTeam>();
}
