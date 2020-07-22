package demo.model;

public class Bus {
	private int busid;
	private String name;
	private int date;
	private String placefrom;
	private String placeto;
	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bus(int busid, String name, int date, String placefrom, String placeto) {
		super();
		this.busid = busid;
		this.name = name;
		this.date = date;
		this.placefrom = placefrom;
		this.placeto = placeto;
	}
	public int getBusid() {
		return busid;
	}
	public void setBusid(int busid) {
		this.busid = busid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public String getPlacefrom() {
		return placefrom;
	}
	public void setPlacefrom(String placefrom) {
		this.placefrom = placefrom;
	}
	public String getPlaceto() {
		return placeto;
	}
	public void setPlaceto(String placeto) {
		this.placeto = placeto;
	}
	

}
