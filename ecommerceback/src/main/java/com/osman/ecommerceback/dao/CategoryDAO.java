package com.osman.ecommerceback.dao;

import java.util.List;

import com.osman.ecommerceback.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();
	Category get(int id);

}
