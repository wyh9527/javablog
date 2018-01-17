package blog.entity;

public class BlogType {
  private Integer id;//编号
  private String TypeName;//类型名称
  private String BlogCount;//博客数量
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getTypeName() {
	return TypeName;
}
public void setTypeName(String typeName) {
	TypeName = typeName;
}
public String getBlogCount() {
	return BlogCount;
}
public void setBlogCount(String blogCount) {
	BlogCount = blogCount;
}
public BlogType(Integer id, String typeName, String blogCount) {
	super();
	this.id = id;
	TypeName = typeName;
	BlogCount = blogCount;
}
public BlogType() {
	super();
}
@Override
public String toString() {
	return "BlogType [id=" + id + ", TypeName=" + TypeName + ", BlogCount=" + BlogCount + "]";
}
   
}
