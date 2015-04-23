package com.snitavets.irontest.entity;

import org.springframework.security.core.CredentialsContainer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Class of user entity in application
 *
 * @author Ilya_Snitavets
 */
@Entity
@Table(name = "[user]")
@SecondaryTables({
        @SecondaryTable(name = "user_data",
                pkJoinColumns =
                @PrimaryKeyJoinColumn(name = "ud_user_id",
                        referencedColumnName = "u_id"))
})
public class User implements Serializable, UserDetails, CredentialsContainer {

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

    @Column(table = "user_data", name = "ud_interests")
    private String interests;

    @Column(name = "u_email", length = 128, nullable = false)
    private String email;

    @Column(table = "user_data", name = "ud_about")
    private String about;

    @Column(name = "u_enabled", nullable = false)
    private boolean enabled = true;

    @Column(name = "u_role_id")
    @Enumerated(EnumType.ORDINAL)
    private UserType type = UserType.USER;

    @Transient
    private ArrayList<GrantedAuthority> authorities;

    @Column(table = "user_data", name = "ud_sex")
    private boolean sex;

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

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (authorities == null) {
            authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(type.name()));
        }
        return authorities;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String getUsername() {
        return login;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
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

    @Override
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
        authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(type.name()));
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    @Override
    public void eraseCredentials() {
        password = null;
    }

    public String getInterests() {
        return interests;
    }

    public void setInterests(String interests) {
        this.interests = interests;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(Object rhs) {
        if (rhs instanceof User) {
            return login.equals(((User) rhs).login);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return login.hashCode();
    }
}
