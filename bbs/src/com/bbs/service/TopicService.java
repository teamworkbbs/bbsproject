/**
 * 
 */
package com.bbs.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.bean.Comments;
import com.bbs.bean.News;
import com.bbs.bean.Pages;
import com.bbs.bean.Topics;
import com.bbs.bean.Types;
import com.bbs.bean.Users;


public interface TopicService {
	public boolean add(Topics topic, Users user, HttpServletResponse response,
			HttpServletRequest request, Types ttype);

	/**
	 * @param id
	 * @return
	 */
	public Topics find(int id);

	/**
	 * @param index
	 * @return
	 */
	public List<Topics> getIndexFreshTopic(int index);

	/**
	 * @param index
	 * @return
	 */
	public List<Topics> getIndexNiceTopic(int index);

	/**
	 * @return
	 */
	public Pages getAllForPages(int pageSize, int nowPage);

	/**
	 * @param index
	 * @return
	 */
	public List<Topics> getIndexHotTopic(int index);

	/**
	 * @param listFloor
	 * @param listComment
	 */
	public void endTopic(int[] listFloor, List<Comments> listComment);

	/**
	 * @param topic
	 */
	public void update(Topics topic);

	/**
	 * @param i
	 * @param nowPage
	 * @return
	 */
	public Pages getHotForPages(int i, int nowPage);

	/**
	 * @param content
	 */
	public Pages search(String content, int pageSize, int nowPage);

	/**
	 * @param tnew
	 * @param user
	 */
	public void updateNews(News tnew, Users user);

	/**
	 * @param pageSize
	 * @param nowPage
	 * @return
	 */
	public Pages getNiceForPages(int pageSize, int nowPage);

}
