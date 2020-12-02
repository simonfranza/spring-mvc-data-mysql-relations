package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class User {
    @Id
    private String login;
    private String password;

    public User(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public boolean areEqual(User user){
        return (user.getLogin().equals(this.getLogin()) && user.getPassword().equals(user.getPassword()));
    }
}
