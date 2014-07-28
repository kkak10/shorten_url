package org.com.service;

import javax.inject.Inject;

import org.com.vo.addressVO;
import org.com.mapper.addressMapper;
import org.springframework.stereotype.Service;

@Service("addressService")
public class addressServiceImpl implements addressService{
	
	@Inject
	addressMapper addressMapper;
	
	public addressVO selectAddress(String address){
		return addressMapper.selectAddress(address);
	}
}
