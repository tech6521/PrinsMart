package kr.prinsmart.domain;

import java.security.Timestamp;
import java.util.Date;

public class OrderVO {
	private int idx;
	private Integer order_idx;
	private Timestamp order_day;
	private String user_id;
	private String user_name;
	private String user_phone;
	private String product_name1;
	private int amount1;
	private int product_price1;
	private int product_sumprice1;
	private String product_name2;
	private int amount2;
	private int product_price2;
	private int product_sumprice2;
	private String product_name3;
	private int amount3;
	private int product_price3;
	private int product_sumprice3;
	private String product_name4;
	private int amount4;
	private int product_price4;
	private int product_sumprice4;
	private String product_name5;
	private int amount5;
	private int product_price5;
	private int product_sumprice5;
	private int sum_price;
	private String name;
	private String phone;
	private String address;
	private String message;
	private String message_detail;
	private Date delivery_day;
	private String pay;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getSum_price() {
		return sum_price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setSum_price(int sum_price) {
		this.sum_price = sum_price;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public Integer getOrder_idx() {
		return order_idx;
	}
	public void setOrder_idx(Integer order_idx) {
		this.order_idx = order_idx;
	}
	public Timestamp getOrder_day() {
		return order_day;
	}
	public void setOrder_day(Timestamp order_day) {
		this.order_day = order_day;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getProduct_name1() {
		return product_name1;
	}
	public void setProduct_name1(String product_name1) {
		this.product_name1 = product_name1;
	}
	public int getAmount1() {
		return amount1;
	}
	public void setAmount1(int amount1) {
		this.amount1 = amount1;
	}
	public int getProduct_price1() {
		return product_price1;
	}
	public void setProduct_price1(int product_price1) {
		this.product_price1 = product_price1;
	}
	public int getProduct_sumprice1() {
		return product_sumprice1;
	}
	public void setProduct_sumprice1(int product_sumprice1) {
		this.product_sumprice1 = product_sumprice1;
	}
	public String getProduct_name2() {
		return product_name2;
	}
	public void setProduct_name2(String product_name2) {
		this.product_name2 = product_name2;
	}
	public int getAmount2() {
		return amount2;
	}
	public void setAmount2(int amount2) {
		this.amount2 = amount2;
	}
	public int getProduct_price2() {
		return product_price2;
	}
	public void setProduct_price2(int product_price2) {
		this.product_price2 = product_price2;
	}
	public int getProduct_sumprice2() {
		return product_sumprice2;
	}
	public void setProduct_sumprice2(int product_sumprice2) {
		this.product_sumprice2 = product_sumprice2;
	}
	public String getProduct_name3() {
		return product_name3;
	}
	public void setProduct_name3(String product_name3) {
		this.product_name3 = product_name3;
	}
	public int getAmount3() {
		return amount3;
	}
	public void setAmount3(int amount3) {
		this.amount3 = amount3;
	}
	public int getProduct_price3() {
		return product_price3;
	}
	public void setProduct_price3(int product_price3) {
		this.product_price3 = product_price3;
	}
	public int getProduct_sumprice3() {
		return product_sumprice3;
	}
	public void setProduct_sumprice3(int product_sumprice3) {
		this.product_sumprice3 = product_sumprice3;
	}
	public String getProduct_name4() {
		return product_name4;
	}
	public void setProduct_name4(String product_name4) {
		this.product_name4 = product_name4;
	}
	public int getAmount4() {
		return amount4;
	}
	public void setAmount4(int amount4) {
		this.amount4 = amount4;
	}
	public int getProduct_price4() {
		return product_price4;
	}
	public void setProduct_price4(int product_price4) {
		this.product_price4 = product_price4;
	}
	public int getProduct_sumprice4() {
		return product_sumprice4;
	}
	public void setProduct_sumprice4(int product_sumprice4) {
		this.product_sumprice4 = product_sumprice4;
	}
	public String getProduct_name5() {
		return product_name5;
	}
	public void setProduct_name5(String product_name5) {
		this.product_name5 = product_name5;
	}
	public int getAmount5() {
		return amount5;
	}
	public void setAmount5(int amount5) {
		this.amount5 = amount5;
	}
	public int getProduct_price5() {
		return product_price5;
	}
	public void setProduct_price5(int product_price5) {
		this.product_price5 = product_price5;
	}
	public int getProduct_sumprice5() {
		return product_sumprice5;
	}
	public void setProduct_sumprice5(int product_sumprice5) {
		this.product_sumprice5 = product_sumprice5;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getMessage_detail() {
		return message_detail;
	}
	public void setMessage_detail(String message_detail) {
		this.message_detail = message_detail;
	}
	public Date getDelivery_day() {
		return delivery_day;
	}
	public void setDelivery_day(Date delivery_day) {
		this.delivery_day = delivery_day;
	}
	@Override
	public String toString() {
		return "OrderVO [order_idx=" + order_idx + ", order_day=" + order_day + ", user_id=" + user_id + ", user_name="
				+ user_name + ", user_phone=" + user_phone + ", product_name1=" + product_name1 + ", amount1=" + amount1
				+ ", product_price1=" + product_price1 + ", product_sumprice1=" + product_sumprice1 + ", product_name2="
				+ product_name2 + ", amount2=" + amount2 + ", product_price2=" + product_price2 + ", product_sumprice2="
				+ product_sumprice2 + ", product_name3=" + product_name3 + ", amount3=" + amount3 + ", product_price3="
				+ product_price3 + ", product_sumprice3=" + product_sumprice3 + ", product_name4=" + product_name4
				+ ", amount4=" + amount4 + ", product_price4=" + product_price4 + ", product_sumprice4="
				+ product_sumprice4 + ", product_name5=" + product_name5 + ", amount5=" + amount5 + ", product_price5="
				+ product_price5 + ", product_sumprice5=" + product_sumprice5 + ", name=" + name + ", phone=" + phone
				+ ", message=" + message + ", message_detail=" + message_detail + ", delivery_day=" + delivery_day
				+ ", pay=" + pay + "]";
	}
	
	
	
	

}
