package com.medroid.domain;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CareTeam {

    /**
     */
    @OneToOne
    private Patient patient;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "Careteams")
    private Set<Doctor> Doctors = new HashSet<Doctor>();
}
