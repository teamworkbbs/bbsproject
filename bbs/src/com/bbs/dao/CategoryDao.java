/**
 * 
 */
package com.bbs.dao;

import java.util.List;

import com.bbs.bean.Categorys;


public interface CategoryDao {
	public boolean add(Categorys cate);
	public boolean delete(int index);
	public boolean update(Categorys cate);
	public List<Categorys> getAll();
	/**
	 * @param id
	 * @return
	 */
	public Categorys find(int id);
}
