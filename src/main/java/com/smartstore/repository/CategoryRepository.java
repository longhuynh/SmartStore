


package com.smartstore.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartstore.domain.Category;


@Repository
public interface CategoryRepository extends CrudRepository<Category,Long>{

}
