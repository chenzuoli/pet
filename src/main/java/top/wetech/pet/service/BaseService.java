package top.wetech.pet.service;

import top.wetech.pet.entity.User;

public abstract class BaseService<T> {
    public abstract User getUserById(String id);
    public abstract User getUserByMobile(String mobile);
}
