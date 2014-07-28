package org.com.controller;

import javax.inject.Inject;

import org.com.converter.Base64Converter;
import org.com.service.addressService;
import org.com.vo.addressVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AddressController {
	
	@Inject
	addressService addressService;
	
	private static final Logger logger = LoggerFactory.getLogger(AddressController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index_redirect() {
		logger.info("시작 컨트롤러");
		return "index";
	}
	
	@RequestMapping(value = "/address_check", method = RequestMethod.POST)
	public @ResponseBody addressVO address_insert(addressVO addressVo) {
		Base64Converter convert = new Base64Converter();
		
		logger.info("주소를 받아서 조회한후 있으면 있던값 리턴 없으면 insert 메서드 호출");
		String url = addressVo.getAddress();
		url = url.replace(" ", "");
		url = url.replace("http://", "");
		url = url.replace("https://", "");
		
		addressVO select_addressvo = new addressVO();
		
		select_addressvo = addressService.selectAddress(url);
		
		if(select_addressvo.getAddress_url() == null){
			int index = addressService.getTopIndex();
			++index;
			String convert_str = convert.encode62(index);
			
		}else{
			return addressVo;
		}
		
		return addressVo;
	}
}
