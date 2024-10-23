package org.assuremanager.model;
import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "quotes")
public class Quote {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "contract_id")
    private Contract contract;

    private double estimatedPremium;
    private LocalDate quoteDate;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private InsuranceType insuranceType;

    private int driverAge;
    private String vehicleType;
    private boolean hasAccidentHistory;

    private double propertyValue;
    private boolean isHighRiskZone;

    private int insuredAge;
    private boolean hasChronicIllness;

    // Getters and Setters
}