
public class Registration {
 private String userid,name,gender,email,password,phonenumber,secretquestion,secretanswer,address,utype;

public Registration() {
	super();
}

public Registration(String userid, String name, String gender, String email, String password, String phonenumber,
		String secretquestion, String secretanswer, String address, String utype) {
	super();
	this.userid = userid;
	this.name = name;
	this.gender = gender;
	this.email = email;
	this.password = password;
	this.phonenumber = phonenumber;
	this.secretquestion = secretquestion;
	this.secretanswer = secretanswer;
	this.address = address;
	this.utype = utype;
}

public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getPhonenumber() {
	return phonenumber;
}

public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}

public String getSecretquestion() {
	return secretquestion;
}

public void setSecretquestion(String secretquestion) {
	this.secretquestion = secretquestion;
}

public String getSecretanswer() {
	return secretanswer;
}

public void setSecretanswer(String secretanswer) {
	this.secretanswer = secretanswer;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getUtype() {
	return utype;
}

public void setUtype(String utype) {
	this.utype = utype;
}
 
}
