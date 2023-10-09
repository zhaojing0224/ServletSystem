package obj;

public class UserInfoObj {

	//メールアドレス
	public String email;
	//ユーザID
	public String userId;
	//パスワード
	public String password;
	//姓
	public String nameSei;
	//名
	public String nameMei;
	//姓カタカナ
	public String nameSeiKata;
	//名カタカナ
	public String nameMeiKata;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNameSei() {
		return nameSei;
	}

	public void setNameSei(String nameSei) {
		this.nameSei = nameSei;
	}

	public String getNameMei() {
		return nameMei;
	}

	public void setNameMei(String nameMei) {
		this.nameMei = nameMei;
	}

	public String getNameSeiKata() {
		return nameSeiKata;
	}

	public void setNameSeiKata(String nameSeiKata) {
		this.nameSeiKata = nameSeiKata;
	}

	public String getNameMeiKata() {
		return nameMeiKata;
	}

	public void setNameMeiKata(String nameMeiKata) {
		this.nameMeiKata = nameMeiKata;
	}

	public UserInfoObj() {
		super();
	}

	public UserInfoObj(String email, String userId, String password, String nameSei, String nameMei, String nameSeiKata,
			String nameMeiKata) {
		super();
		this.email = email;
		this.userId = userId;
		this.password = password;
		this.nameSei = nameSei;
		this.nameMei = nameMei;
		this.nameSeiKata = nameSeiKata;
		this.nameMeiKata = nameMeiKata;
	}
}