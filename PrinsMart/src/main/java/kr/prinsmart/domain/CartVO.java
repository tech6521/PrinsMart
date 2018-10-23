package kr.prinsmart.domain;

public class CartVO {
	private Integer cart_id;
	private String user_id;
	private int amount;
	private String product_desc;
	private String product_url;
	private int product_price;
	private String product_name;


	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getCart_id() {
		return cart_id;
	}
	public void setCart_id(Integer cart_id) {
		this.cart_id = cart_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getProduct_url() {
		return product_url;
	}
	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	@Override
	public String toString() {
		return "CartVO [cart_id=" + cart_id + ", user_id=" + user_id + ", amount=" + amount + ", product_desc="
				+ product_desc + ", product_url=" + product_url + ", product_price=" + product_price + ", product_name="
				+ product_name + "]";
	}
	
	
	
	
	

}
