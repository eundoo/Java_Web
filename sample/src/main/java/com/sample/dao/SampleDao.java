package com.sample.dao;

import java.util.Date;

import com.sample.vo.Sample;

public class SampleDao {

	public Sample getSample() {
		Sample sample = new Sample(100, "아이패드 프로", "애플", 1500000, 10, new Date());
		return sample;
	}
}
