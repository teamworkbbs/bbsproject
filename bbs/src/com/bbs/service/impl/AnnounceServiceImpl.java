/**
 * 
 */
package com.bbs.service.impl;

import java.util.List;

import com.bbs.bean.Announces;
import com.bbs.bean.Pages;
import com.bbs.bean.Topics;
import com.bbs.dao.AnnounceDao;
import com.bbs.dao.PageDao;
import com.bbs.service.AnnounceService;


public class AnnounceServiceImpl implements AnnounceService {

	private AnnounceDao announceDao;
	private PageDao pageDao;

	public AnnounceDao getAnnounceDao() {
		return announceDao;
	}

	public void setAnnounceDao(AnnounceDao announceDao) {
		this.announceDao = announceDao;
	}

	public PageDao getPageDao() {
		return pageDao;
	}

	public void setPageDao(PageDao pageDao) {
		this.pageDao = pageDao;
	}

	@Override
	public List<Announces> getIndexAnno(int index) {
		return this.announceDao.getIndexAnno(index);
	}

	@Override
	public List<Announces> getAll() {
		return this.announceDao.getAll();
	}

	@Override
	public Pages ManageAllForPages(int pageSize, int nowPage) {
		final String sql = "from Announces as anno order by anno.id desc";
		int allRecords = this.pageDao.getAllRowCount(sql);
		int totalPage = Pages.calculateTotalPage(pageSize, allRecords);// 总页数
		final int currentoffset = Pages.currentPage_startRecord(pageSize,
				nowPage);// 当前页的开始记录
		final int length = pageSize;
		final int currentPage = Pages.judgeCurrentPage(nowPage);
		List<Announces> listAnnounces = this.pageDao.query_Objects_ForPages(sql,
				currentoffset, length);
		Pages pagebean = new Pages();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRecords(allRecords);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPages(totalPage);
		pagebean.setListAnno(listAnnounces);
		pagebean.init();
		return pagebean;
	}

	@Override
	public Announces find(int id) {
		return this.announceDao.find(id);
	}

	@Override
	public void ManageUpdate(Announces announce) {
		this.announceDao.update(announce);
	}

	@Override
	public void ManageAdd(Announces announce) {
		this.announceDao.add(announce);
		
	}

}
