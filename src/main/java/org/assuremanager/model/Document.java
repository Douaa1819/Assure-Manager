package org.assuremanager.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "documents")
public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long documentId;

    @NotBlank(message = "Document path is required")
    private String documentPath;

    @ManyToOne
    @JoinColumn(name = "contract_id")
    private Contract contract;

    public Document (){

    }

    public Document(Long documentId, Contract contract, String documentPath) {
        this.documentId = documentId;
        this.contract = contract;
        this.documentPath = documentPath;
    }


    public Long getDocumentId() {
        return documentId;
    }

    public void setDocumentId(Long documentId) {
        this.documentId = documentId;
    }

    public @NotBlank(message = "Document path is required") String getDocumentPath() {
        return documentPath;
    }

    public void setDocumentPath(@NotBlank(message = "Document path is required") String documentPath) {
        this.documentPath = documentPath;
    }

    public Contract getContract() {
        return contract;
    }

    public void setContract(Contract contract) {
        this.contract = contract;
    }
}