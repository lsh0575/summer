package com.summer.dto;

public class UserVO {
private int no;
private String name;
private int age;

public UserVO() { super(); }

public UserVO(int no) {
	super();
	this.no = no;
}

public UserVO(String name, int age) { super(); this.name = name; this.age = age; }
public UserVO(int no, String name, int age) { super(); this.no = no; this.name = name; this.age = age; }
@Override public String toString() { return "UserVO [no=" + no + ", name=" + name + ", age=" + age + "]"; }

public int getNo() { return no; } public void setNo(int no) { this.no = no; }
public String getName() { return name; } public void setName(String name) { this.name = name; }
public int getAge() { return age; } public void setAge(int age) { this.age = age; }
}
