package kr.prinsmart.domain;

public class ProductVO {
	
	private int idx;
	private String product_code;
	private String product_name;
	private String product_address;
	private String product_date;
	private String product_price;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_address() {
		return product_address;
	}
	public void setProduct_address(String product_address) {
		this.product_address = product_address;
	}
	public String getProduct_date() {
		return product_date;
	}
	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	@Override
	public String toString() {
		return "ProductVO [idx=" + idx + ", product_code=" + product_code + ", product_name=" + product_name
				+ ", product_address=" + product_address + ", product_date=" + product_date + ", product_price="
				+ product_price + "]";
	}
	
	
	
	
	

}
