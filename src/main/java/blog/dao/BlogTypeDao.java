package blog.dao;

import java.util.List;

import blog.entity.BlogType;

public interface BlogTypeDao {
	//添加博客分类
	public Integer add(BlogType blogtype);
	//
	public Integer deleteBlogType(Integer id);
	//类型分类管理
	public List<BlogType> blogtypelist();
	//通过id查询博客分类
	public BlogType findTypeById(Integer id);
	//主页的分类和数量
	public List<BlogType> countList();
	
}
