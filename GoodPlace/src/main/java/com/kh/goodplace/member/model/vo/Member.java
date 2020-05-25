package com.kh.goodplace.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

	/*
	 * ** lombok 라이브러리
	 * 	    단지 어노테이션만으로 구성된 필드에 맞춰서
	 * 	    생성자, setter/getter 메소드, toString 등등이 알아서 자동으로 만들어짐
	 */

@Setter
@Getter
@NoArgsConstructor	// 기본생성자
@AllArgsConstructor	// 전체생성자
@ToString
public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String gender;
	private String age;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
		
	//private String uId;
	// getuId()	setuId()
	// ${ loginUser.uId }
		
}
