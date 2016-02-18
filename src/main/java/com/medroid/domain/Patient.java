package com.medroid.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Max;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Patient {

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<PatientMessages> PatientMessages = new HashSet<PatientMessages>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<PatientNotifications> PatientNotifications = new HashSet<PatientNotifications>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<PatientMedications> PatientMedications = new HashSet<PatientMedications>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<PatientAllergies> PatientAllergies = new HashSet<PatientAllergies>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<DoctorDiagnosis> Diagnosis = new HashSet<DoctorDiagnosis>();

    /**
     */
    @NotNull
    @Column(name = "id", unique = true, insertable = false, updatable = false)
    private int patientID;

    /**
     */
    @NotNull
    private String UserName;

    /**
     */
    @NotNull
    @Size(min = 8)
    private String Password;

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
    @Size(min = 3)
    private String MiddleName;

    /**
     */
    @NotNull
    @Max(120L)
    private int Age;

    /**
     */
    @NotNull
    private String Sex;

    /**
     */
    @NotNull
    private String DOB;

    /**
     */
    @NotNull
    private String City;

    /**
     */
    @NotNull
    private String Prov;

    /**
     */
    @NotNull
    private String Bloodtype;

    /**
     */
    @NotNull
    private String Status;

    /**
     */
    @NotNull
    private String HC;

    /**
     */
    @NotNull
    private String SymptomDesc;

    /**
     */
@OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<Careteam > AttendingDoctors = new HashSet<Careteam>();
}
