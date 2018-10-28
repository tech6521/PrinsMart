package kr.prinsmart.domain;


import java.util.Date;

public class OrderVO {
	private Integer order_idx;
	private String user_id;
	private String user_phone;
	private String r_address;
	private String r_name;
	private String message;
	private String product_name;
	private int product_price;
	private int amount;
	private int amount_price;
	private int all_price;
	private String pay;
	private Date regdate;
	public Integer getOrder_idx() {
		return order_idx;
	}
	public void setOrder_idx(Integer order_idx) {
		this.order_idx = order_idx;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getR_address() {
		return r_address;
	}
	public void setR_address(String r_address) {
		this.r_address = r_address;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getAmount_price() {
		return amount_price;
	}
	public void setAmount_price(int amount_price) {
		this.amount_price = amount_price;
	}
	public int getAll_price() {
		return all_price;
	}
	public void setAll_price(int all_price) {
		this.all_price = all_price;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "OrderVO [order_idx=" + order_idx + ", user_id=" + user_id + ", user_phone=" + user_phone
				+ ", r_address=" + r_address + ", r_name=" + r_name + ", message=" + message + ", product_name="
				+ product_name + ", product_price=" + product_price + ", amount=" + amount + ", amount_price="
				+ amount_price + ", all_price=" + all_price + ", pay=" + pay + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
	
	
	
	
	

}
