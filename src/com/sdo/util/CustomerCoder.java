package com.sdo.util;

import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Calendar;
@Service
public class CustomerCoder {

	  public static String convertRoom(String no) {
	    if (no.length() == 2 || no.length() == 3)
	      return "0" + no;
	    else if (no.length() == 4)
	      return no;
	    else
	      return no;
	  }

	  private static String convertInt2String(String str) {
	    char[] ary1 = str.toCharArray();
	    char[] ary2 = {'0', '0', '0', '0'};
	    System.arraycopy(ary1, 0, ary2, ary2.length - ary1.length, ary1.length);
	    return new String(ary2);
	  }

	  /**
	   * 补位0
	   *
	   * @param num 一共几位
	   * @param str 原字符串
	   * @return 新字符串
	   */
	  public static String convertInt2String(int num, String str) {
	    char[] ary1 = str.toCharArray();
	    String str0 = "";
	    for (int i = 0; i < num; i++) {
	      str0 += "0";
	    }
	    char[] ary2 = str0.toCharArray();
	    System.arraycopy(ary1, 0, ary2, ary2.length - ary1.length, ary1.length);
	    return new String(ary2);
	  }

	  public String encoderMD5(String password) {
	    MessageDigest md;
	    try {
	      md = MessageDigest.getInstance("MD5");
	      md.update(password.getBytes());
	      return new BigInteger(1, md.digest()).toString(16);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return password;
	  }


	  /**
	   * 序列号生成
	   * 公式： 前缀+n位序列编号
	   *
	   * @param suffix  前缀
	   * @param current 当前数值
	   * @param pattern 位数
	   * @return 自动生成的编号
	   */
	 
	  /**
	   * 序列号生成
	   * 公式： 前缀+n位序列编号
	   *
	   * @param suffix  前缀
	   * @param current 当前数值
	   * @param pattern 位数
	   * @return 自动生成的编号
	   */
	 
	  public static void main(String[] args) {
	    //System.out.print(new CustomerCoder().encoderMD5("123456"));\
	    //System.out.print(contractCode("gwideal", "", 4));
	  }
	}

