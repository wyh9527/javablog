package blog.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.dao.BlogDao;
import blog.entity.Blog;
import blog.service.BlogDaoService;

@Service
public class BlogDaoServiceImpl implements BlogDaoService{
         @Autowired
         private BlogDao blogDao;

		@Override
		public List<Blog> selectAllBlog() {
			// TODO Auto-generated method stub
			List<Blog> blog = this.blogDao.selectAllBlog();
			return blog;
		}

		@Override
		public Blog findById(Integer id) {
			// TODO Auto-generated method stub
		Blog blog = this.blogDao.findById(id);
		     return blog;
		}

		@Override
		public void addBlog(Blog blog) {
			// TODO Auto-generated method stub
			System.out.println(blog);
			blogDao.addBlog(blog);
		}

		@Override
		public void deleteBlog(Integer id) {
			blogDao.deleteBlog(id);
			
		}

		@Override
		public boolean updateBlog(Blog blog) {
			return blogDao.updateBlog(blog);
			
		}

		@Override
		public Integer getBlogByTypeId(Integer typeId) {
			// TODO Auto-generated method stub
			return blogDao.getBlogByTypeId(typeId);
		}

		@Override
		public List<Blog> BlogByType(Integer typeId) {
			// TODO Auto-generated method stub
			return blogDao.BlogByType(typeId);
		}

		
}
