package blog.dao;

import blog.entity.User;

public interface UserDao {
   public User login(User user);
   public User register(User user);
}
