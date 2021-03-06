package com.medroid.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class LogUserDoctor {

    /**
     */
    private String username;

    /**
     */
    private String password;

    /**
     */
    @OneToOne
    private Doctor doctor;
}
