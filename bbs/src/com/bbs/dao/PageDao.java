/**
 *
 */
package com.bbs.dao;

import java.util.List;

import org.hibernate.Query;

public interface PageDao {
    public int getAllRowCount(String hql);
    public List query_Objects_ForPages(String hql, int offset, int length);
}
