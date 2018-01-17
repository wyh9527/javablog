package blog.service;

import java.util.List;

import blog.entity.BlogType;

public interface BlogTypeDaoService {
	//添加博客分类
	public Integer add(BlogType blogType);
	
	public List<BlogType> blogtypelist();
	
	public List<BlogType> countList();
	
	public Integer deleteBlogType(Integer id);
}
