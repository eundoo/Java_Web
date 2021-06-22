package com.erp.utils;

	import java.text.DecimalFormat;
	import java.text.ParseException;
	import java.text.SimpleDateFormat;
	import java.util.Date;

	public class CommonUtils {
		
		private static String DATE_FORMAT_PATTERN = "yyyy-MM-dd";
		private static String NUMBER_FORMAT_PATTERN = "##,###";

		private static SimpleDateFormat DATE_FORMAT = new SimpleDateFormat(DATE_FORMAT_PATTERN);
		private static DecimalFormat NUMBER_FORMAT = new DecimalFormat(NUMBER_FORMAT_PATTERN);
		
		/**
		 * 문자열을 숫자로 변환해서 반환한다.
		 * @param str 문자열
		 * @return 정수값, str이 null이거나 str을 숫자로 변환중 예외가 발생하면 0을 변환한다.
		 */
		public static int stringToInt(String str) {
			return stringToInt(str, 0);
		}
		
		/**
		 * 문자열을 숫자로 변환해서 반환한다
		 * @param str 문자열
		 * @param defaultValue 문자열이 올바르지 않을 경우 반환하는 기본값
		 * @return 정수값, str이 null이거나 str을 숫자로 변환중 예외가 발생하면 지정된 기본값을 반환한다.
		 */
		public static int stringToInt(String str, int defaultValue) {
			if(str == null) {
				return defaultValue;
			}
			
			try {
				return Integer.parseInt(str);			
			} catch(NumberFormatException e) {
				return defaultValue;
			}
		}
		
		public static Date stringToDate(String string) {
			try {
				if(string == null) {
					return null;
				}
				return DATE_FORMAT.parse(string);			
			} catch (ParseException e) {
				throw new RuntimeException(e);
			}
		}
		
		/**
		 * 날짜를 yyyy-MM-dd 형식의 문자열로 변환해서 반환한다.
		 * @param date 날짜
		 * @return yyyy-MM-dd 형식의 텍스크
		 */
		public static String dateToString(Date date) {
			if(date == null) {
				return "";
			}
			return DATE_FORMAT.format(date);
		}
		
		/**
		 * 숫자를 3자리마다 ","가 추가된 문자열로 변환해서 반환한다.
		 * @param number 숫자
		 * @return 자리수가 표시된 텍스트
		 */
		public static String numberToString(int number) {
			return NUMBER_FORMAT.format(number);
		}
		
		/**
		 * 숫자를 3자리마다 ","가 추가된 문자열로 변환해서 반환한다.
		 * @param number 숫자
		 * @return 자리수가 표시된 텍스트
		 */
		public static String numberToString(long number) {
			return NUMBER_FORMAT.format(number);
		}
		
	}
