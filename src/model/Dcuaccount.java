package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the DCUACCOUNT database table.
 * 
 */
@Entity
@NamedQuery(name="Dcuaccount.findAll", query="SELECT d FROM Dcuaccount d")
public class Dcuaccount implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long accountid;

	@Temporal(TemporalType.DATE)
	private Date accountdate;

	private long status;

	@Column(name="\"TYPE\"")
	private long type;

	//bi-directional many-to-one association to Dcuuser
	@ManyToOne
	@JoinColumn(name="USERID")
	private Dcuuser dcuuser;

	//bi-directional many-to-one association to Dcutransaction
	@OneToMany(mappedBy="dcuaccount")
	private List<Dcutransaction> dcutransactions;

	public Dcuaccount() {
	}

	public long getAccountid() {
		return this.accountid;
	}

	public void setAccountid(long accountid) {
		this.accountid = accountid;
	}

	public Date getAccountdate() {
		return this.accountdate;
	}

	public void setAccountdate(Date accountdate) {
		this.accountdate = accountdate;
	}

	public long getStatus() {
		return this.status;
	}

	public void setStatus(long status) {
		this.status = status;
	}

	public long getType() {
		return this.type;
	}

	public void setType(long type) {
		this.type = type;
	}

	public Dcuuser getDcuuser() {
		return this.dcuuser;
	}

	public void setDcuuser(Dcuuser dcuuser) {
		this.dcuuser = dcuuser;
	}

	public List<Dcutransaction> getDcutransactions() {
		return this.dcutransactions;
	}

	public void setDcutransactions(List<Dcutransaction> dcutransactions) {
		this.dcutransactions = dcutransactions;
	}

	public Dcutransaction addDcutransaction(Dcutransaction dcutransaction) {
		getDcutransactions().add(dcutransaction);
		dcutransaction.setDcuaccount(this);

		return dcutransaction;
	}

	public Dcutransaction removeDcutransaction(Dcutransaction dcutransaction) {
		getDcutransactions().remove(dcutransaction);
		dcutransaction.setDcuaccount(null);

		return dcutransaction;
	}

}