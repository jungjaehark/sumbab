package com.sumbab.project.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecommendService {
	@Autowired
	private RecommendDaoImpl recommendDao;
	
	public List<StoreVo> categoryRecommend(String classify, SelectedCategory selectedCategory) {
		if(classify.equals("?��?��?��")) {
			String category = selectedCategory.getCategory1() + selectedCategory.getCategory2();
			return recommendDao.selectRest(category);
		}else {
			if(selectedCategory.getCategory1().equals("timeslot")) {
				String category = selectedCategory.getCategory1();
				if(selectedCategory.getCategory2().equals("0"))
					return recommendDao.selectCafe2(category);
				else
					return recommendDao.selectCafe1(category);
			}
			String category = selectedCategory.getCategory1() + selectedCategory.getCategory2();
			return recommendDao.selectCafe1(category);
		}
	}
	
}
