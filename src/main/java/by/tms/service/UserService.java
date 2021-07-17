package by.tms.service;

import by.tms.entity.User;
import by.tms.storage.UserStorage;

public class UserService {

    private UserStorage userStorage = new UserStorage();

    public boolean addUser(User user) {
        if (userStorage.isUserExistByUsername(user.getUsername())) {
            return false;
        } else {
            userStorage.addUser(user);
            return true;
        }
    }

    public User getUserByUsername(String username) {
        if (userStorage.isUserExistByUsername(username)) {
            return userStorage.getUserByUsername(username);
        }
        return null;
    }
}
