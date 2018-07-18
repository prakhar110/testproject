package icsd;

public class Emp 
{
	String strempno,strename,streage,streadd,stresal;
	
	public Emp()
	{
		
	}

	public Emp(String strempno, String strename, String streage, String streadd, String stresal) {
		super();
		this.strempno = strempno;
		this.strename = strename;
		this.streage = streage;
		this.streadd = streadd;
		this.stresal = stresal;
	}

	@Override
	public String toString() {
		return "Emp [strempno=" + strempno + ", strename=" + strename + ", streage=" + streage + ", streadd=" + streadd
				+ ", stresal=" + stresal + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	public String getStrempno() {
		return strempno;
	}

	public void setStrempno(String strempno) {
		this.strempno = strempno;
	}

	public String getStrename() {
		return strename;
	}

	public void setStrename(String strename) {
		this.strename = strename;
	}

	public String getStreage() {
		return streage;
	}

	public void setStreage(String streage) {
		this.streage = streage;
	}

	public String getStreadd() {
		return streadd;
	}

	public void setStreadd(String streadd) {
		this.streadd = streadd;
	}

	public String getStresal() {
		return stresal;
	}

	public void setStresal(String stresal) {
		this.stresal = stresal;
	}
	

}
