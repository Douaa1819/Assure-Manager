package org.assuremanager.model;
import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "contracts")
public class Contract {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private InsuranceType insuranceType;

    private LocalDate startDate;
    private LocalDate endDate;
    private double monthlyPremium;

    @OneToOne(mappedBy = "contract", cascade = CascadeType.ALL)
    private Quote quote;

    // Getters and Setters
}
