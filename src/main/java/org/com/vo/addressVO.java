package org.com.vo;

public class addressVO {
	private String addressNo;
	private String address;
	private String address_url;
	
	public String getAddressNo() {
		return addressNo;
	}
	public void setAddressNo(String addressNo) {
		this.addressNo = addressNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_url() {
		return address_url;
	}
	public void setAddress_url(String address_url) {
		this.address_url = address_url;
	}
	
	@Override
	public String toString() {
		return "addressVO [addressNo=" + addressNo + ", address=" + address
				+ ", address_url=" + address_url + "]";
	}	
}
