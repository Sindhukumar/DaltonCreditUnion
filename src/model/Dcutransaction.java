package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the DCUTRANSACTION database table.
 * 
 */
@Entity
@NamedQuery(name="Dcutransaction.findAll", query="SELECT d FROM Dcutransaction d")
public class Dcutransaction implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long transactionid;

	private long amount;

	@Temporal(TemporalType.DATE)
	private Date transactiondate;

	@Column(name="\"TYPE\"")
	private long type;

	//bi-directional many-to-one association to Dcuaccount
	@ManyToOne
	@JoinColumn(name="ACCOUNTID")
	private Dcuaccount dcuaccount;

	public Dcutransaction() {
	}

	public long getTransactionid() {
		return this.transactionid;
	}

	public void setTransactionid(long transactionid) {
		this.transactionid = transactionid;
	}

	public long getAmount() {
		return this.amount;
	}

	public void setAmount(long amount) {
		this.amount = amount;
	}

	public Date getTransactiondate() {
		return this.transactiondate;
	}

	public void setTransactiondate(Date transactiondate) {
		this.transactiondate = transactiondate;
	}

	public long getType() {
		return this.type;
	}

	public void setType(long type) {
		this.type = type;
	}

	public Dcuaccount getDcuaccount() {
		return this.dcuaccount;
	}

	public void setDcuaccount(Dcuaccount dcuaccount) {
		this.dcuaccount = dcuaccount;
	}

}