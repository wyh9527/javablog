package blog.service;

import java.util.List;


import blog.entity.Blog;

public interface BlogDaoService {
	 public  List<Blog> selectAllBlog();
	 public  Blog findById(Integer id );
	  public void  addBlog(Blog blog);
	  public void  deleteBlog(Integer id);
	  public boolean  updateBlog(Blog blog);
	  public Integer getBlogByTypeId(Integer typeId);
	  public List<Blog> BlogByType(Integer typeId);
}
