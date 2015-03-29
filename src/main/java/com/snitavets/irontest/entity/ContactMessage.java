package com.snitavets.irontest.entity;

import javax.persistence.*;

/**
 * @author Ilya_Snitavets
 */
@Entity
@Table(name = "contact_message")
public class ContactMessage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cm_id")
    private Integer id;

    @Column(name = "cm_name", nullable = false, length = 128)
    private String name;

    @Column(name = "cm_email", nullable = false, length = 128)
    private String email;

    @Column(name = "cm_phone", length = 128)
    private String phone;

    @Column(name = "cm_message", nullable = false, length = 2048)
    private String message;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
