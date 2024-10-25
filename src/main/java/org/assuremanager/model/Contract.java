package org.assuremanager.model;
import jakarta.persistence.*;
import org.assuremanager.enumeration.InsuranceType;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "contracts")
public class Contract {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long contractId;

    @Enumerated(EnumType.STRING)
    private InsuranceType type;

    @Temporal(TemporalType.DATE)
    private Date startDate;

    @Temporal(TemporalType.DATE)
    private Date endDate;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @OneToOne
    @JoinColumn(name = "estimate_id")
    private Estimate estimate;

    @OneToMany(mappedBy = "contract", cascade = CascadeType.ALL)
    private List<Document> documents;


    public Contract(Long contractId, InsuranceType type, Date startDate, Date endDate, User user, Estimate estimate, List<Document> documents) {
        this.contractId = contractId;
        this.type = type;
        this.startDate = startDate;
        this.endDate = endDate;
        this.user = user;
        this.estimate = estimate;
        this.documents = documents;
    }


    public Contract() {

    }

    public Long getContractId() {
        return contractId;
    }

    public void setContractId(Long contractId) {
        this.contractId = contractId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public InsuranceType getType() {
        return type;
    }

    public void setType(InsuranceType type) {
        this.type = type;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Estimate getEstimate() {
        return estimate;
    }

    public void setEstimate(Estimate estimate) {
        this.estimate = estimate;
    }

    public List<Document> getDocuments() {
        return documents;
    }

    public void setDocuments(List<Document> documents) {
        this.documents = documents;
    }
}