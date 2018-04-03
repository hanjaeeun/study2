package com.study.util;

import java.text.DecimalFormat;

public class FileUtil {
	
	// 300 "300 Bytes" , 1024 bytes - 1Kb  , 1024Kb - 1Mb        1048576
	public static String fancySize(long size) {
		DecimalFormat df = new DecimalFormat("###,###.0");
		
		if(size < 1024) {
			return size  + " Bytes";
		}else if(size < (1024*1024) ){
			return  df.format( size/1024.0 ) + " Kb"; 
		}else {
			return  df.format( size/(1024.0 * 1024.0) ) + " Mb";
		}
	}
	
	public static void main(String[] args) {
		System.out.println(   14 / 5.0 );
		System.out.println( FileUtil.fancySize(500));
		System.out.println( FileUtil.fancySize(2200));
		System.out.println( FileUtil.fancySize(1170000));
	}
	
}

