package com.sprk.util;

public class FuncUtil {
	
	public static boolean checkPrime(int num) {

		for (int i = 2; i <= num / 2; i++) {
			if (num % i == 0) {
				// not prime
				return false;
			}
		}
		return true;
	}

}
