package com.study.util;

public class Mysum {
    // 단순하게 브레이크 
	//조선에 맞을 때 브레이크 
	public int  sum(int start, int last) {
		int tot = 0;
		 for(int i =start ; i<=last ;i++) {
			 tot += i;
		 }
		 return tot;
	}
	public static void main(String[] args) {
		Mysum my = new Mysum();
		int ret = my.sum(10,20);
		System.out.println("결과 : "+ ret);
	}
}
