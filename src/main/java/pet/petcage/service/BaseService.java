package pet.petcage.service;

import pet.petcage.entity.User;

public abstract class BaseService<T> {
    public abstract User getUserById(String id);
    public abstract User getUserByPhone(String mobile);
}
