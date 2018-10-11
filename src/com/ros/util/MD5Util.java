package com.ros.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5工具类
 * 
 * @author Administrator
 *
 */
public class MD5Util {
	/**
	 * 静态方法，便于作为工具类
	 * 
	 * @param str
	 *            使用算法前的字符串
	 * @return 算法执行后的结果 字符串
	 */
	public static String getEncodeByMd5(String str) {
		try {
			int i;
			// 得到MessageDigest的对象
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte b[] = md.digest();
			// 创建StringBuffer对象
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0) {
					i += 256;
				}
				if (i < 16) {
					buf.append("0");
				}
				buf.append(Integer.toHexString(i));
			}
			// 返回结果为32位加密
			return buf.toString();
			// 返回结果为16位的加密
			// return buf.toString().substring(8, 24);
		} catch (NoSuchAlgorithmException e) {
			// e.printStackTrace();
			return null;
		}

	}
}
