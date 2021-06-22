package com.erp.vo;

import java.util.Date;

public class Attendance {

	private int attNo;
	private Date workDay;
	private Date workIn;
	private Date workTempOff;
	private Date workBack;
	private Date workOff;
	private Date workHours;
	private int empNo;
	
	public Attendance () {}

	public int getAttNo() {
		return attNo;
	}

	public void setAttNo(int attNo) {
		this.attNo = attNo;
	}

	public Date getWorkDay() {
		return workDay;
	}

	public void setWorkDay(Date workDay) {
		this.workDay = workDay;
	}

	public Date getWorkIn() {
		return workIn;
	}

	public void setWorkIn(Date workIn) {
		this.workIn = workIn;
	}

	public Date getWorkTempOff() {
		return workTempOff;
	}

	public void setWorkTempOff(Date workTempOff) {
		this.workTempOff = workTempOff;
	}

	public Date getWorkBack() {
		return workBack;
	}

	public void setWorkBack(Date workBack) {
		this.workBack = workBack;
	}

	public Date getWorkOff() {
		return workOff;
	}

	public void setWorkOff(Date workOff) {
		this.workOff = workOff;
	}

	public Date getWorkHours() {
		return workHours;
	}

	public void setWorkHours(Date workHours) {
		this.workHours = workHours;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	
}
