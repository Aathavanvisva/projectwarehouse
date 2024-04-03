package dtopack;

public class dto1 {
	
	private int id;
	private String name;
	private String email;
	private long contact;
	private String password;
	private byte[] image;
	public dto1(int id, String name, String email, long contact, String password, byte[] image) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.password = password;
		this.image = image;
	}
	public dto1() {
		
	}
	public int getid()
	{
		return id;
	}public String getname()
	{
		return name;
	}
	
	public String getemail()
	{
		return email;
	}
	public long getcontact()
	{
		return contact;
	}
	public String getpassword()
	{
		return password;
	}
	public byte[] getimage()
	{
		return image;
	}
	
	public void setid(int id)
	{
		this.id = id;
	}
	public void setname(String name)
	{
	
		this.name = name;
		
	}
	public void setemail(String email)
	{
		this.email = email;
		
	}
	public void setcontact(long contact)
	{
		this.contact = contact;

	}
	public void setpassword(String password)
	{
		this.password = password;
	
	}
	public void setimage(byte[] image)
	{
		this.image = image;
	}
	

}
