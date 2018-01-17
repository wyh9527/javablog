package blog.dao;

import java.util.List;


import blog.entity.Blog;

public interface BlogDao {
//查找所有博客
  public List<Blog>  selectAllBlog();
  //根据id查找该博客，用于查看全文
  public Blog  findById(Integer id);
  //发布博客
  public void  addBlog(Blog blog);
  //删除博客
  public Integer  deleteBlog(Integer id);
  //修改博客
  public boolean  updateBlog(Blog blog);
  //根据id查找博客
  public Integer getBlogByTypeId(Integer typeId);
  //寻找该分类下的博客
  public List<Blog> BlogByType(Integer typeId);
}
