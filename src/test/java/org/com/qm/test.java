package org.com.qm;

import org.com.converter.Base64Converter;

public class test {
	   public static void main(String[] args){
		Base64Converter converter = new Base64Converter();
		
		for(int i = 0; i < 1000; i++){
			System.out.println(converter.encode62(i));
		}
	}
}
