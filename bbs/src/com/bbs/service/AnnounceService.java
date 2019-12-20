/**
 *
 */
package com.bbs.service;

import java.util.List;

import com.bbs.bean.Announces;
import com.bbs.bean.Pages;

public interface AnnounceService {
    public List<Announces> getIndexAnno(int index);

    /**
     * @return
     */
    public List<Announces> getAll();

    /**
     * @param pageSize
     * @param nowPage
     * @return
     */
    public Pages ManageAllForPages(int pageSize, int nowPage);

    /**
     * @param id
     */
    public Announces find(int id);

    /**
     * @param announce
     */
    public void ManageUpdate(Announces announce);

    /**
     * @param announce
     */
    public void ManageAdd(Announces announce);
}
