package bean;

public class MemberBean {
	
	// 데이터를 은닉하기 위해 private
	// 맵핑(1:1)하기 위해 => JSP의 name 과 이름 꼬옥 맞춰줘야 돼. => JSP에 자동으로 밑의 메소드 호출해서 맵핑해주는 기술 있음.
		// 왜냐, jsp에서 쓴 데이터가 클래스에(JavaBeans의 멤버변수에) 들어가야 하므로
	private String id;
	private String pass;
	private String email;
	private String tel;
	private String addr;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	

}
