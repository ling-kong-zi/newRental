package com.rental.service;

import com.rental.entity.Record;

import java.util.List;

public interface RecordService extends BaseService<Record> {
	long findTotalPage(int pagesize);
	List<Record> searchCarName(String record);

}
