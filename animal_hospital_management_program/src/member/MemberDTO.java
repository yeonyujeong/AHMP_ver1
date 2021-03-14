package member;

import java.sql.Timestamp;

public class MemberDTO {

	private String name;
	private String age;
	private Timestamp birth;
	private String gender;
	private String neutralization;
	private String contact;
	
	public MemberDTO() {}
	
	public MemberDTO(String name, String age, Timestamp birth, String gender, String neutralization, String contact) {
		super();
		this.name = name;
		this.age = age;
		this.birth = birth;
		this.gender = gender;
		this.neutralization = neutralization;
		this.contact = contact;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Timestamp getBirth() {
		return birth;
	}

	public void setBirth(Timestamp birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNeutralization() {
		return neutralization;
	}

	public void setNeutralization(String neutralization) {
		this.neutralization = neutralization;
	}

	public String getContact() {
		return contact;
	}

	public void setVarchar(String contact) {
		this.contact = contact;
	}
	
	
	
	
}
