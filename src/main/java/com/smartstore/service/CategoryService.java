
package com.smartstore.service;

import java.util.List;

import com.smartstore.domain.Category;

public interface CategoryService {

	public List<Category> findAll();

	public Category saveCategory(Category category);

	public Category find(Long catId);

}
