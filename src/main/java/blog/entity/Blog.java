package blog.entity;

import java.util.Date;

public class Blog {
  private Integer id;//���
  private String title;//���
  private Date releaseDate;//��������
  private Integer replyNumber;//�ظ�����
  private String content;//����
  private BlogType blogType;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public Date getReleaseDate() {
	return releaseDate;
}
public void setReleaseDate(Date releaseDate) {
	this.releaseDate = releaseDate;
}
public Integer getReplyNumber() {
	return replyNumber;
}
public void setReplyNumber(Integer replyNumber) {
	this.replyNumber = replyNumber;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public BlogType getBlogType() {
	return blogType;
}
public void setBlogType(BlogType blogType) {
	this.blogType = blogType;
}
public Blog(Integer id, String title, Date releaseDate, Integer replyNumber, String content, BlogType blogType) {
	super();
	this.id = id;
	this.title = title;
	this.releaseDate = releaseDate;
	this.replyNumber = replyNumber;
	this.content = content;
	this.blogType = blogType;
}
public Blog() {
	super();
}
@Override
public String toString() {
	return "Blog [id=" + id + ", title=" + title + ", releaseDate=" + releaseDate + ", replyNumber=" + replyNumber
			+ ", content=" + content + ", blogType=" + blogType + "]";
}

  
}