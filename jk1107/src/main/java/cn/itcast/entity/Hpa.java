package cn.itcast.entity;

/**
 * @Description:
 * @Author:	nutony
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014-3-5
 */
public class Hpa {
	private String id;
	private String breast;
	private String adipocytes;
	private String Negative;
	private String Staining;
	private String Supportive;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBreast() {
		return breast;
	}
	public void setBreast(String breast) {
		this.breast = breast;
	}
	public String getAdipocytes() {
		return adipocytes;
	}
	public void setAdipocytes(String adipocytes) {
		this.adipocytes = adipocytes;
	}
	public String getNegative() {
		return Negative;
	}
	public void setNegative(String negative) {
		Negative = negative;
	}
	public String getStaining() {
		return Staining;
	}
	public void setStaining(String staining) {
		Staining = staining;
	}
	public String getSupportive() {
		return Supportive;
	}
	public void setSupportive(String supportive) {
		Supportive = supportive;
	}
}
