package org.com.converter;

public class Base64Converter {
	 private static final String NUMBERING_KEY = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	 public String encode62(int value) {
		  String returnValue = "";
		  int keyLength = NUMBERING_KEY.length(); 
		  int divideValue = value; 
		  if (divideValue <= keyLength-1) {
		   returnValue = "" + NUMBERING_KEY.charAt(value % keyLength);
		  } else {
		   while (keyLength-1 < divideValue) {
		    returnValue = NUMBERING_KEY.charAt(divideValue % keyLength) + returnValue;
		    divideValue = divideValue / keyLength;
		   }
		   returnValue = NUMBERING_KEY.charAt(divideValue % keyLength) + returnValue;
		  }
		  
		  return returnValue;
		 }

	 public int decode62(String value) {
		  // NULL 처리
		  if (value == null || "".equals(value)) {
		   throw new NullPointerException();
		  }
		  int returnValue = 0;
		  int valueLength = value.length();
		  if (valueLength == 1) {
		   return NUMBERING_KEY.indexOf(value);
		  } else {
		   int index = 0;
		   char list[] = value.toCharArray();
		   for (int i = list.length; 1 < i; i--) {
		    returnValue += Math.pow(NUMBERING_KEY.length(), (double)i-1) * NUMBERING_KEY.indexOf(list[index++]);
		   }
		   returnValue += NUMBERING_KEY.indexOf(list[index]);
		  }
		  return returnValue;
		 }
}
