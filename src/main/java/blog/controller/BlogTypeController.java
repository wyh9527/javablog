package blog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import blog.entity.BlogType;
import blog.service.BlogDaoService;
import blog.service.BlogTypeDaoService;

@Controller
public class BlogTypeController {
	
            @Autowired
               BlogTypeDaoService blogtypeService; 
            @Autowired
               BlogDaoService service;

            @RequestMapping("admin/addblogtype")
             public String addBlogType(BlogType blogtype){
				this.blogtypeService.add(blogtype);
				return "redirect:adminblogtypelist.jsp";
              }
            
            //对文章分类进行分页查询
            @RequestMapping("admin/blogtypelist")
            public String BlogTypeList(@RequestParam(value="pn",defaultValue="1")Integer pn,
        			Model model){
            	PageHelper.startPage(pn, 4);
            	List<BlogType> blogtypelist = blogtypeService.blogtypelist();
            	PageInfo page = new PageInfo(blogtypelist);
            	model.addAttribute("blogPageInfo", page);
				return "adminblogtypelist.jsp";
				}
            
        @RequestMapping("admin/deleteblogtype")
        public String delelteBlogType(@RequestParam(value="id")Integer id,HttpServletRequest request){
        	if(service.getBlogByTypeId(id)>0){
        		request.setAttribute("message", "该博客分类下存在博客，不能删除");
        	}else{
        		blogtypeService.deleteBlogType(id);
        	}
	           return "blogtypelist.do";
         }
}