package com.express.pony.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class User implements Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    private String userId;
    private String fullName;
    private String displayName;
    private String email;
    private String username;
    private String password;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setFullName(String firstName) {
        this.fullName = firstName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setEmail(String emailAddress) {
        this.email = emailAddress;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("User{");
        sb.append("firstName='").append(fullName).append('\'');
        sb.append(", displayName='").append(displayName).append('\'');
        sb.append(", emailAddress='").append(email).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append('}');
        return sb.toString();
    }
}