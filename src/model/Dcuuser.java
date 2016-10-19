package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the DCUUSER database table.
 * 
 */
@Entity
@NamedQuery(name="Dcuuser.findAll", query="SELECT d FROM Dcuuser d")
public class Dcuuser implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long userid;

	private String email;

	private String name;

	private String passwordhash;

	private String phone;

	//bi-directional many-to-one association to Dcuaccount
	@OneToMany(mappedBy="dcuuser")
	private List<Dcuaccount> dcuaccounts;

	public Dcuuser() {
	}

	public long getUserid() {
		return this.userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswordhash() {
		return this.passwordhash;
	}

	public void setPasswordhash(String passwordhash) {
		this.passwordhash = passwordhash;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<Dcuaccount> getDcuaccounts() {
		return this.dcuaccounts;
	}

	public void setDcuaccounts(List<Dcuaccount> dcuaccounts) {
		this.dcuaccounts = dcuaccounts;
	}

	public Dcuaccount addDcuaccount(Dcuaccount dcuaccount) {
		getDcuaccounts().add(dcuaccount);
		dcuaccount.setDcuuser(this);

		return dcuaccount;
	}

	public Dcuaccount removeDcuaccount(Dcuaccount dcuaccount) {
		getDcuaccounts().remove(dcuaccount);
		dcuaccount.setDcuuser(null);

		return dcuaccount;
	}

}