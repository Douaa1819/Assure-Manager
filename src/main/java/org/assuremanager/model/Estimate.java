package org.assuremanager.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "estimates")
public class Estimate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long estimationId;

    @NotNull
    private Float totalAmount;

    private Boolean status;

    @OneToOne(mappedBy = "estimate")
    private Contract contract;


    public Estimate(Long estimationId, Float totalAmount, Boolean status, Contract contract) {
        this.estimationId = estimationId;
        this.totalAmount = totalAmount;
        this.status = status;
        this.contract = contract;
    }

    public Estimate() {

    }


    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Contract getContract() {
        return contract;
    }

    public void setContract(Contract contract) {
        this.contract = contract;
    }

    public @NotNull Float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(@NotNull Float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Long getEstimationId() {
        return estimationId;
    }

    public void setEstimationId(Long estimationId) {
        this.estimationId = estimationId;
    }
}
