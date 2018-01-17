package blog.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.dao.BlogTypeDao;
import blog.entity.BlogType;
import blog.service.BlogTypeDaoService;

@Service
public class BlogTypeDaoServiceImpl implements BlogTypeDaoService{
         @Autowired
         private BlogTypeDao blogtypeDao;

		@Override
		public Integer add(BlogType blogType) {
			// TODO Auto-generated method stub
			return  blogtypeDao.add(blogType);
		}

		@Override
		public List<BlogType> blogtypelist() {
			// TODO Auto-generated method stub
			return blogtypeDao.blogtypelist();
		}

		@Override
		public List<BlogType> countList() {
			// TODO Auto-generated method stub
			return blogtypeDao.countList();
		}

		@Override
		public Integer deleteBlogType(Integer id) {
			// TODO Auto-generated method stub
			return blogtypeDao.deleteBlogType(id);
		}



		
}
