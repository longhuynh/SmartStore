package com.smartstore.service;



import edu.mum.eselling.domain.Vendor;

public interface VendorService {

	
	void addNewVendor(Vendor vendor);
	public Vendor getVendor(Long vendorId);
	public void saveVendor(Vendor vendor);
	
	public Vendor getVendorByUserName(String name);

	
	/*public Vendor getVendorByProductId(Long productId);*/

}
