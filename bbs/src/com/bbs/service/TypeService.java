/**
 * 
 */
package com.bbs.service;


import com.bbs.bean.Pages;
import com.bbs.bean.Types;


public interface TypeService {
	public Pages getAllForPages(int pageSize, int nowPage, int typeId);

	/**
	 * @param id
	 * @return
	 */
	public Types find(int id);

	/**
	 * @param type
	 */
	public void add(Types type);

	/**
	 * @param type
	 */
	public void update(Types type);
	
}
