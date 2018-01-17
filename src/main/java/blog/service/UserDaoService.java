package blog.service;

import blog.entity.User;

public interface UserDaoService {
  public User login(User user);
  public User Register(User user);
}
