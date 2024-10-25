package org.assuremanager.model;

import jakarta.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "insurances")
public abstract class Insurance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long insuranceId;

    public Insurance() {
    }
}
