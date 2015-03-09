package com.snitavets.irontest.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Class of user entity in application
 *
 * @author Ilya_Snitavets
 */
@Entity
@Table(name = "user", catalog = "IronTestDB")
@SecondaryTables({
        @SecondaryTable(catalog = "IronTestDB",
                name = "user_data",
                pkJoinColumns =
                @PrimaryKeyJoinColumn(name = "ud_user_id",
                        referencedColumnName = "u_id")),
        @SecondaryTable(name = "role",
                pkJoinColumns = @PrimaryKeyJoinColumn(name = "r_id",
                        referencedColumnName = "u_role_id"))
})
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "u_id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "u_login", length = 128, unique = true, nullable = false)
    private String login;

    @Column(name = "u_password", length = 60, nullable = false)
    private String password;

    @Column(table = "user_data", name = "ud_first_name", length = 128)
    private String firstName;

    @Column(table = "user_data", name = "ud_last_name", length = 128)
    private String lastName;

    @Column(name = "u_enabled", nullable = false)
    private boolean enabled = true;

    @Column(table = "role", name = "r_name")
    @Enumerated(EnumType.STRING)
    private UserType type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public UserType getType() {
        return type;
    }

    public void setType(UserType type) {
        this.type = type;
    }
}
