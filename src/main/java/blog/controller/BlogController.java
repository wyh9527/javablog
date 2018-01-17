package blog.controller;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import blog.entity.Blog;
import blog.entity.BlogType;
import blog.service.BlogDaoService;
import blog.service.BlogTypeDaoService;
@SessionAttributes("typeId")
@Controller
public class BlogController {
   @Autowired
     BlogDaoService service;
   @Autowired
     BlogTypeDaoService blogtypeService;
   
   //获取分类
   @RequestMapping("admin/writeblog")
   public String BlogTypeList(Model model) throws Exception{
	    List<BlogType> blogtypecountlist = blogtypeService.blogtypelist();
	    model.addAttribute("blogtypecountlist", blogtypecountlist);
	    return "writeblog.jsp";
	   
   }
   //添加博客
   @RequestMapping("admin/addBlogs")
   public String writeBlogs(Blog blog,HttpServletRequest request,HttpServletResponse response) throws Exception{
	   Date currentTime = new Date();
	   blog.setReleaseDate(currentTime);
	   this.service.addBlog(blog);
	   request.setAttribute("msg", "添加文章成功");  
	   return "adminPageList.jsp";
	   
   }
  /* @RequestMapping("admin/adminblog")
	public String adminblog(HttpServletRequest request){
			List<Blog> blog = service.selectAllBlog();
			request.setAttribute("list", blog);
			return "adminPageList.jsp";
		
	}*/
   
 //用户文章管理分页
   @RequestMapping("admin/adminblog")
	public String adminblog(@RequestParam(value="pn",defaultValue="1")Integer pn,
			Model model){
	           PageHelper.startPage(pn, 4);
	           PageHelper.orderBy("id desc");//设置为倒叙
			List<Blog> blog = service.selectAllBlog();
			PageInfo page1 = new PageInfo(blog);
			model.addAttribute("adminblog", page1);
			return "adminPageList.jsp";
	}
//删除博客
     @RequestMapping("admin/deleteBlog")
	public String deleteBlog(@RequestParam(value="id")Integer id){
	           this.service.deleteBlog(id);
				return "redirect:adminblog.do";
	}
    @RequestMapping("admin/updateBlog")
	public String updateBlog(Blog blog,Model model){
	           this.service.updateBlog(blog);
				return "redirect:adminblog.do";
	}
    //获取博客
   @RequestMapping("admin/getBlog")
	public String getBlog(@RequestParam(value="id")int id,HttpServletRequest request,Model model){
	           Blog blog = service.findById(id);
	          model.addAttribute("blog", blog);
	          request.setAttribute("blog", blog);
	          List<BlogType> blogtypecountlist = blogtypeService.blogtypelist();
	  	      model.addAttribute("blogtypecountlist", blogtypecountlist);
				return "editBlog.jsp";
	}
  // <-------------------------------------------------------------------------------------------------------------->
	//主页 显示第一页
   @RequestMapping("index")
	public String index(@RequestParam(value="pageNum",defaultValue="1")Integer pageNum,
			Model model){
	           PageHelper.startPage(pageNum, 2);
	           PageHelper.orderBy("id desc");//设置为倒叙
			List<Blog> blog = service.selectAllBlog();
			PageInfo page = new PageInfo(blog);
			model.addAttribute("pageInfo", page);
			List<BlogType> list = blogtypeService.countList();
			model.addAttribute("blogtypelistIndex", list);
			return "index.jsp";
	}
   
   @RequestMapping("index/{pageNum}")
  	public String index2(@PathVariable("pageNum")Integer pageNum,
  			Model model){
  	           PageHelper.startPage(pageNum, 2);
  	           PageHelper.orderBy("id desc");//设置为倒叙
  			List<Blog> blog = service.selectAllBlog();
  			PageInfo page = new PageInfo(blog);
  			model.addAttribute("pageInfo", page);
  			List<BlogType> list = blogtypeService.countList();
			model.addAttribute("blogtypelistIndex", list);
  			return "../index.jsp";
  	}
   @RequestMapping("IndexgetBlogbyid")
	public String IndexgetBlog(@RequestParam(value="id")Integer id,HttpServletRequest request,Model model){
	          Blog blog = service.findById(id);
	          System.out.println(blog.getTitle());
	          model.addAttribute("blog", blog);
	          request.setAttribute("blog", blog);
	          List<BlogType> list = blogtypeService.countList();
				model.addAttribute("blogtypelistIndex", list);
				return "blogsingle.jsp";
	}
   @RequestMapping("indextype")
  	public String indextype(@RequestParam(value="pageNum",defaultValue="1")Integer pageNum,@RequestParam(value="typeId")Integer typeId,
  			Model model){
  	           PageHelper.startPage(pageNum, 2);
  	           PageHelper.orderBy("id desc");//设置为倒叙
  			List<Blog> blogByType = service.BlogByType(typeId);
  			PageInfo page = new PageInfo(blogByType);
  			model.addAttribute("pageInfo", page);
  			model.addAttribute("typeId", typeId);
  			List<BlogType> list = blogtypeService.countList();
  			model.addAttribute("blogtypelistIndex", list);
  			return "blogtypeIndex.jsp";
  	}
     
     @RequestMapping("indextype/{pageNum}")
    	public String indextype2(@PathVariable("pageNum")Integer pageNum,
    			Model model,HttpSession session){
    	           PageHelper.startPage(pageNum, 2);
    	           PageHelper.orderBy("id desc");//设置为倒叙
    	           Integer typeId = (Integer) session.getAttribute("typeId");
    	           List<Blog> blogByType = service.BlogByType(typeId);
    	           PageInfo page = new PageInfo(blogByType);
    			model.addAttribute("pageInfo", page);
    			List<BlogType> list = blogtypeService.countList();
  			model.addAttribute("blogtypelistIndex", list);
    			return "../blogtypeIndex.jsp";
    	}
  
	}
   

   
